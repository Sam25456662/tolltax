<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Location;

class LocationController extends Controller
{
  public function index()
{
    // Execute the query to get locations where deletestatus is 1
    $locations = Location::where('deletestatus', 1)->get(); // Use get() to retrieve the results
 
    // Return the view with the locations
    return view('backend.location.index', compact('locations')); // Note the variable name change to plural
}


    public function create()
    {
        return view('backend.location.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'city' => 'required|string',
            'latitude' => 'nullable|numeric',
            'longitude' => 'nullable|numeric',
        ]);

        $location = new Location();
        $location->city = $request->city;
        $location->latitude = $request->latitude; // Store latitude
        $location->longitude = $request->longitude; // Store longitude

        $location->save();

        $notification = array(
            'message' => 'Location created successfully.',
            'alert-type' => 'success'
        );
        return redirect()->route('backend.location.index')->with($notification);
    }

    public function edit($id)
    {
        $location = Location::findOrFail($id);
        return view('backend.location.edit', compact('location'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'city' => 'required|string|unique:locations,city,' . $id,
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
        ]);

        $location = Location::find($id);
        $location->city = $request->city;
        $location->latitude = $request->latitude; // Update latitude
        $location->longitude = $request->longitude; // Update longitude

        $location->save();

        // Notification
        $notification = array(
            'message' => 'Location updated successfully.',
            'alert-type' => 'success'
        );
        return redirect()->route('backend.location.index')->with($notification);
    }

    public function destroy($id)
    {
        $location = Location::findOrFail($id);
       
        $location->deletestatus=0;
        $location->save();
        $notification = array(
            'message' => 'Location deleted successfully.',
            'alert-type' => 'success'
        );
        return redirect()->route('backend.location.index')->with($notification);
    }
}
