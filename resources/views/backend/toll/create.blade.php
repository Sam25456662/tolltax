@extends('master.backendmaster')

@section('content')

<div class="wrapper">
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Add Toll</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Add Toll</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Toll Add</h3>
                            </div>
                            
                            <!-- form start -->
                            <form id="myForm" action="{{ route('toll.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="card-body">
                                    <!-- Car Number and Aadhar -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-5">
                                                <label for="carno">Enter Car Number</label>
                                                <input type="text" class="form-control" placeholder="Enter Car Number" name="carno" required>
                                                @if ($errors->has('carno'))
                                                    <div class="error text-danger">{{ $errors->first('carno') }}</div>
                                                @endif
                                            </div>

                                            <div class="col-5">
                                                <label for="aadhar">Enter Driver Aadhar(Optional)</label>
                                                <input type="text" class="form-control" placeholder="Enter Driver Aadhar" name="aadhar">
                                                @if ($errors->has('aadhar'))
                                                    <div class="error text-danger">{{ $errors->first('aadhar') }}</div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>

                                    <!-- In Time and Out Time -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-5">
                                                <label for="intime">Select Start Date & Time</label>
                                                <input type="datetime-local" class="form-control" name="intime" required>
                                                @if ($errors->has('intime'))
                                                    <div class="error text-danger">{{ $errors->first('intime') }}</div>
                                                @endif
                                            </div>

                                          
                                        </div>
                                    </div>

                                    <!-- From and To Locations -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-5">
                                                <label for="from">Enter Location From</label>
                                                <select name="from" id="input1" class="form-control" required>
                                                    <option value="">Select From Location</option>
                                                    @foreach($location as $c)
                                                        <option value="{{ $c->id }}">{{ $c->city }}</option>
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('from'))
                                                    <div class="error text-danger">{{ $errors->first('from') }}</div>
                                                @endif
                                            </div>

                                            <div class="col-5">
                                                <label for="to">Enter Location To</label>
                                                <select name="to" id="input2" class="form-control" required>
                                                    <option value="">Select To Location</option>
                                                    @foreach($location as $c)
                                                        <option value="{{ $c->id }}">{{ $c->city }}</option>
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('to'))
                                                    <div class="error text-danger">{{ $errors->first('to') }}</div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Axel Number and Total Tax -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-5">
                                                <label for="axel_no">Axel Number</label>
                                                <input type="text" class="form-control" id="axeid" name="axel_no" placeholder="Axel Number" readonly>
                                                @if ($errors->has('axel_no'))
                                                    <div class="error text-danger">{{ $errors->first('axel_no') }}</div>
                                                @endif
                                            </div>

                                            <div class="col-5">
                                                <label for="totaltax">Total Tax</label>
                                                <input type="text" class="form-control" id="tax" name="total_tax" placeholder="Total Tax" readonly>
                                                @if ($errors->has('totaltax'))
                                                    <div class="error text-danger">{{ $errors->first('totaltax') }}</div>
                                                @endif
                                            </div>
                                            <div class="col-5">
                                                <label for="totaltax">recharge(optional)</label>
                                                <input type="text" class="form-control" name="recharge" placeholder="recharge" >
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<!-- Scripts for AJAX functionality -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const fromSelect = document.getElementById('input1');
        const toSelect = document.getElementById('input2');
        const axelInput = document.getElementById('axeid');
        const taxInput = document.getElementById('tax');

        // Function to fetch toll details
        function fetchTollDetails(from, to) {
            if (from && to) {
                // Perform AJAX request to the backend
                fetch(`/get-toll-details?from=${from}&to=${to}`)
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            // Populate the axel number and total tax
                            axelInput.value = data.axel_no;
                            taxInput.value = data.total_tax; // Add this line to set the tax
                        } else {
                            // Clear the fields if no match is found
                            axelInput.value = '';
                            taxInput.value = '';
                            alert('No matching toll found for this route.');
                        }
                    })
                    .catch(error => {
                        console.error('Error fetching toll details:', error);
                        axelInput.value = '';
                        taxInput.value = '';
                    });
            }
        }

        // Event listeners for when "from" and "to" fields change
        fromSelect.addEventListener('change', function() {
            const from = fromSelect.value;
            const to = toSelect.value;
            fetchTollDetails(from, to);
        });

        toSelect.addEventListener('change', function() {
            const from = fromSelect.value;
            const to = toSelect.value;
            fetchTollDetails(from, to);
        });
    });
</script>

@endsection
