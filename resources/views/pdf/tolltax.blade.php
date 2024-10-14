  @php
    use Carbon\Carbon;
@endphp
                      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FASTag Toll Receipt</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
        /* Body styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; /* Center the container */
            align-items: center; /* Vertically center the container */
            height: 100vh; /* Full height of the viewport */
        }
        #random-time{
            padding-right: 200PX;
            padding-top: 6px;
        }
#random-percentage{
    padding-top: 6px;

}
#kb{
font-size: 7px;

}
        /* Mobile screen container */
        .mobile-screen {
            width: 440px; /* Width of the mobile device */
            height: 880px; /* Height of the mobile device */
          
            background-color: #fff; /* Background color */
        
            position: relative; /* Positioning context for absolute children */
            overflow: hidden; /* Prevent content overflow */
        }

        /* Top bar (status bar) */
        .status-bar {
    height: 30px; /* Height of the status bar */
    background-color: #000; /* Background color of the status bar */
    color: #fff; /* Text color */
    display: flex; /* Flexbox layout */
    justify-content: space-between; /* Space items evenly */
    padding: 5px; /* Padding for better spacing */
}

/* Print styles */
@media print {
    .status-bar {
        background-color: #000 !important; /* Force black background */
        color: #fff !important; /* Force white text */
        -webkit-print-color-adjust: exact; /* Ensure colors are printed exactly */
        color-adjust: exact; /* Ensure colors are printed exactly */
    }
    .content {
            
            overflow-y: hidden !important; /* Allows vertical scrolling if content overflows */
            
        }
}

        

        /* Content area */
        .content {
            padding: 13px; /* Padding for the content area */
            height: calc(100% - 120px); /* Adjust height for the status bar and bottom buttons */
            overflow-y: auto; /* Allows vertical scrolling if content overflows */
            
        }

        /* Bottom button bar */
        .bottom-buttons {
    display: flex; /* Flexbox for button layout */
    justify-content: space-around; /* Space out the buttons */
    background-color: #000; /* Black background for button bar */
    padding: 3px 0; /* Padding for button bar */
}

.button {
    cursor: pointer; /* Pointer cursor on hover */
    color: #fff; /* White icon color */
    font-size: 24px; /* Adjust icon size as needed */
}

/* Print styles */
@media print {
    .bottom-buttons {
        background-color: #000 !important; /* Force black background */
        color: #fff !important; /* Force white icon color */
        -webkit-print-color-adjust: exact; /* Ensure colors are printed exactly */
        color-adjust: exact; /* Ensure colors are printed exactly */
    }
    
    .bottom-buttons .button {
        color: #fff !important; /* Ensure button text/icons are white */
    }
}


        /* Individual button style */
        .button {
            flex: 1; /* Equal space for each button */
            text-align: center; /* Center text */
            padding: 10px; /* Padding for buttons */
            cursor: pointer; /* Pointer cursor on hover */
            color: white; /* Button text color */
            font-size: 24px; /* Icon font size */
        }

        /* Button hover effect */
        

        /* Print button styles */
        .print-btn {
            background-color: #007bff; /* Primary blue color */
            color: white; /* White text */
            border: none; /* No border */
            padding: 10px 20px; /* Padding */
            font-size: 16px; /* Font size */
            border-radius: 5px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor */
            transition: background-color 0.3s ease; /* Smooth hover transition */
            margin: 10px 0; /* Margin for spacing */
        }

        /* Print button hover effect */
        .print-btn:hover {
            background-color: #0056b3; /* Darker shade on hover */
        }

        /* Optional: Style the button on focus */
        .print-btn:focus {
            outline: none; /* Remove default focus outline */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Custom focus shadow */
        }

        /* Hide button during printing */
        @media print {
            .print-btn {
                display: none; /* This hides the button during printing */
            }
        }

       
    .vo {
        display: block; /* Makes "vo" appear on a new line */
    }
    .lte {
        display: block; /* Makes "LTE" appear directly below "vo" */
        font-size: 0.8em; /* Optional: you can adjust the size of "LTE" if needed */
        text-transform: uppercase; /* Ensures "LTE" is uppercase */
    }
  .sticky-header {
        position: sticky; /* Makes the div sticky */
        top: -13px; /* Positions it at the top of the viewport */
        background-color: white; /* Change background color if necessary */
        z-index: 1000; /* Ensures it stays above other content */
        margin: -4px;
        height:117px;
        
    }
   .full-width-border {
    width: 100%; /* Makes sure the border spans the full width of the device */
    border-bottom: 2px solid #ccc;
    padding-bottom: 0px;
}

.content {
    max-width: 1200px; /* Set the maximum width of your content */
    margin: 0 auto; /* Centers the content horizontally */
    padding: 0 5px; /* Optional: Add padding for spacing inside the content */
}

    </style>
</head>
<body>

<div class="mobile-screen">
    <!-- Top bar -->
  
    <div class="status-bar">
    <!-- Placeholder for random percentage -->
 
    <span style="padding-top:5px;">
        <small>4G </small>
        <i class="fa-solid fa-signal"></i>
    </span>
    <!-- Placeholder for random time -->
    <small id="random-time"></small>
    <small>
    <span class="vo">vo</span>
    <span class="lte">LTE</span>
   
</small>

   
    <small>
    <span style="font-size:13px;padding-top:3px;"class="vo" id="random-vo"></span> <!-- Placeholder for random value -->
    <span id ="kb" class="lte">KB/s</span>
</small>



</small>


<span id="random-percentage"></span>
</div>

    <!-- Content area -->
    <div class="content">
        <div class="container">
           

        <div class="sticky-header icons-row" style="display: flex; justify-content: space-between; align-items: center;">
            <!-- Left icon -->
            
            <i class="fa-solid fa-arrow-left" style="font-size: 24px;margin:1px;"></i>
            
            <!-- Heading in the center -->
            <h2 style="margin:1px;">FASTag For {{$toll->carno ?? 'N/A' }}</h2>
            
            <!-- Right icon -->
            <i class="fa-solid fa-ellipsis-vertical" style="font-size: 24px;margin:1px;"></i>
        </div>
        <div class="row">
       
 
        @foreach ($processedTollData as $tollData)
    @if ($tollData['showDate'])
       <h5 style="background-color: #ccc; padding: 5px;">{{ $tollData['date'] }}</h5>

    @else
        <div class="col-5">
            <div class="info full-width-border" style="position: relative; display: flex; align-items: center; justify-content: space-between;">
<div class="image-column" style="flex: 1; max-width: 50px; padding-top: 0;margin-top:0;">
    <img src="{{ asset('upload/idfc.jpg') }}" alt="IDFC Image" class="img-responsive" style="max-width: 103%; height: 2rem; width: 89%; margin-top:-51px;padding-top: 0;padding-left:7px">
</div>


                <div class="details-column" style="flex: 3; padding-left: 15px;">
                    <h3 style="margin: 0; padding-top: 0px;margin-top:27px;">FASTag &nbsp;Swipe</h3>
<h5 style="margin-top: 8px; padding-top: 0;margin-bottom: 8px;">
    <strong>{{ $tollData['tollname'] }}</strong><strong>&nbsp;Toll plaza</strong>
</h5>

               <h6 style="font-weight: normal; text-decoration: none;padding-bottom:0px;margin-bottom:14px;margin-top: 16px;" id="debit-time-{{ $tollData['relatedTollId'] }}">
    <span>Debited at</span> 
    <span id="debit-time-value-{{ $tollData['relatedTollId'] }}">
        {{ $tollData['formattedDebitTime'] }}               
    </span>
</h6>

                </div>

                <div class="price-column" style="flex: 1; text-align: right;">
                    <p style="margin: 0; font-weight: bold; color: red;">
                        <strong>- &nbsp;</strong><strong>₹</strong> 
                         {{ intval($tollData['price']) }}
                    </p>
                </div>
            </div>
        </div>
    @endif
@endforeach






 @if($toll->recharge)
        <div class="info" style="position: relative; display: flex; align-items: center; justify-content: space-between; border-bottom: 2px solid #ccc;padding-bottom:20px;">
            <div class="image-column" style="flex: 1; max-width: 50px;">
                <img src="{{ asset('upload/idfc.jpg') }}" alt="IDFC Image" class="img-responsive" style="max-width: 100%; height: auto;">
            </div>

            <div class="details-column" style="flex: 3; padding-left: 15px;">
                <h3 style="margin: 0;padding-top:20px">FASTag Recharge</h3>
                <p><strong>{{ $toll->carno ?? 'N/A' }}</strong><strong>&nbsp;</strong></p>
                <p id="debit-time-{{ $toll->id }}">
                    <span>Credited at</span> 
                    <span id="debit-time-value-{{ now()->format('d-m-Y') }}">
                   <!--{{ \Carbon\Carbon::parse($toll->intime)->subMinutes(5)->format('h:i A') }}-->
                  {{ \Carbon\Carbon::parse($toll->intime)->format('h:i A') }}

</span>

                </p>
            </div>

            <div class="price-column" style="flex: 1; text-align: right;">
                <p style="margin: 0; font-weight: bold;color:green;"><strong>+ &nbsp;</strong><strong>₹</strong> {{ $toll->recharge ?? 'N/A' }}</p>
            </div>
        </div>
    @endif







</div>



        </div>
    </div>

    <!-- Bottom button bar -->
<!-- Bottom button bar -->
<div class="bottom-buttons">
    <div class="button" onclick="window.print()">
        <i class="fa-regular fa-square fa-xs"></i>
    </div>
    <div class="button">
        <i class="fa-regular fa-circle fa-xs"></i>
        
    </div>
    <a href="/toll/index" class="button">
    <i class="fa-solid fa-chevron-left fa-xs"></i>
</a>

</div>

</div>
<script>
    // Function to generate a random percentage between 0 and 100 and select the appropriate battery icon
    function generateRandomPercentage() {
        const percentage = Math.floor(Math.random() * 101); // Generate random percentage between 0 and 100
        let batteryIcon;

        // Determine battery icon based on the percentage
        if (percentage >= 80) {
            batteryIcon = 'fa-battery-full'; // Full battery
        } else if (percentage >= 60) {
            batteryIcon = 'fa-battery-three-quarters'; // 75% battery
        } else if (percentage >= 40) {
            batteryIcon = 'fa-battery-half'; // 50% battery
        } else if (percentage >= 20) {
            batteryIcon = 'fa-battery-quarter'; // 25% battery
        } else {
            batteryIcon = 'fa-battery-empty'; // Empty battery
        }

        // Return the percentage with the appropriate battery icon
        return percentage + '% <i class="fa-solid ' + batteryIcon + '"></i>';
    }

    // Function to generate a random time (HH:MM)
    function generateRandomTime() {
        let hours = Math.floor(Math.random() * 24);  // Random hour between 0 and 23
        let minutes = Math.floor(Math.random() * 60); // Random minute between 0 and 59

        // Format hours and minutes to always show two digits (e.g., 09:05)
        return ('0' + hours).slice(-2) + ':' + ('0' + minutes).slice(-2);
    }

    // Assign the generated random percentage and time to the respective spans
    document.getElementById('random-percentage').innerHTML = generateRandomPercentage(); // Use innerHTML for the percentage to include the icon
    document.getElementById('random-time').innerText = generateRandomTime(); // innerText for time (no HTML needed)
</script>
<script>
    // Function to generate a random value between 0.1 and 9.9
    function generateRandomValue() {
        return (Math.random() * 9.9).toFixed(1); // Generates a random number between 0.1 and 9.9 with one decimal place
    }

    // Set the generated random value to the span
    document.getElementById('random-vo').innerText = generateRandomValue(); // Set the random value (e.g., 3.5)
</script>

</body>
</html>