<?php

namespace App\Http\Controllers\Backend;

use App\Models\relatedtoll;
use App\Models\newtoll;
use App\Models\Axe;
use App\Models\Location;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class NewtollController extends Controller
{
    // Display the list of new tolls
    public function index()
    {   
        $newtoll = NewToll::with('relatedtoll', 'axel', 'toLocation', 'fromLocation')->get();
        return view('backend.newtoll.index', compact('newtoll'));
    }

    // Show the form to create a new toll
    public function create()
    {
        $axe = Axe::all();
        $location = Location::where('deletestatus', 1)->get();
        return view('backend.newtoll.create', compact('axe', 'location'));
    }

    // Store a newly created toll
    public function store(Request $request)
    {
        // Validate the request
      /*  $validatedData = $request->validate([
            'from' => 'required|integer|exists:locations,id', // Reference location ID
            'to' => 'required|integer|exists:locations,id',
            'axel_no' => 'required|string|max:255|unique:newtolls,axel_no', // Ensure axel_no is unique
            'tolls' => 'required|array|min:1', // Ensure at least one toll is provided
            'tolls.*.tollname' => 'required|string|max:255',
            'tolls.*.price' => 'required|numeric|min:0',
            'tolls.*.time' => 'required|numeric|min:0',
        ]);*/

        // Create a new toll entry
        $form = NewToll::create($request->only(['from', 'to', 'axel_no']));
      
        $total = 0;

        // Loop through the tolls and save them
        foreach ($request->tolls as $toll) {
            $tollEntry = new RelatedToll([
                'tollname' => $toll['tollname'],
                'price' => $toll['price'],
                'time' => $toll['time']
            ]);
            $form->relatedtoll()->save($tollEntry);
            $total += $toll['price'];
        }

        // Update total price
        $form->update(['total' => $total]);

        // Notification
        $notification = array(
            'message' => 'New Toll created successfully.',
            'alert-type' => 'success'
        );

        return redirect()->route('backend.newtoll.index')->with($notification);
    }

    // Show the form for editing a specific toll
    public function edit($id)
    {
        $toll = NewToll::with('relatedtoll')->findOrFail($id);
        $location = Location::all();
        $axe = Axe::all();
        return view('backend.newtoll.edit', compact('toll', 'location', 'axe'));
    }

    // Update the toll entry
    public function update(Request $request, $id)
    {
        $form = NewToll::findOrFail($id);

        // Validate the incoming request data
      /*  $validatedData = $request->validate([
            'from' => 'required|integer|exists:locations,id',
            'to' => 'required|integer|exists:locations,id',
            'axel_no' => 'required|string|max:255|unique:newtolls,axel_no,' . $id, // Ensure uniqueness excluding current record
            'relatedtoll' => 'required|array|min:1', // Ensure at least one toll is provided
            'relatedtoll.*.tollname' => 'required|string|max:255',
            'relatedtoll.*.price' => 'required|numeric|min:0',
            'relatedtoll.*.time' => 'required|numeric|min:0',
        ]);*/

        // Update the main record
        $form->update($request->only(['from', 'to', 'axel_no']));

        $total = 0;

        // Delete existing tolls
        $form->relatedtoll()->delete();

        // Add updated tolls
        foreach ($request->relatedtoll as $toll) {
            $tollEntry = new RelatedToll([
                'tollname' => $toll['tollname'],
                'price' => $toll['price'],
                'time' => $toll['time']
            ]);
            $form->relatedtoll()->save($tollEntry);
            $total += $toll['price'];
        }

        // Update total price
        $form->update(['total' => $total]);

        // Notification
        $notification = array(
            'message' => 'Toll updated successfully.',
            'alert-type' => 'success'
        );

        return redirect()->route('backend.newtoll.index')->with($notification);
    }

    // Delete the toll entry
    public function destroy($id)
    {
        $form = NewToll::findOrFail($id);

        // Deleting the related tolls
        $form->relatedtoll()->delete();

        // Deleting the form
        $form->delete();

        // Notification
        $notification = array(
            'message' => 'Toll deleted successfully.',
            'alert-type' => 'success'
        );

        return redirect()->route('backend.newtoll.index')->with($notification);
    }

    // Get the tax/total for a specific toll
    public function getTax($id)
    {
        // Fetch the total tax for the selected toll
        $toll = NewToll::find($id);

        if ($toll) {
            return response()->json([
                'success' => true,
                'total' => $toll->total // Assuming 'total' is the field for tax/total
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'Tax not found'
        ]);
    }

    // Generate PDF for the tolls
    public function generatePDF()
    {
        $newtoll = NewToll::with(['fromLocation', 'toLocation', 'relatedtoll'])->get(); 

        $pdf = PDF::loadView('newtoll_pdf', compact('newtoll'));
        return $pdf->download('new_toll_view.pdf');
    }
}

