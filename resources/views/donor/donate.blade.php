@extends('donor.donor_dashboard')

@section('content')
@endsection

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>donate</title>
    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }


    
    </style>
</head>
<body>

    <!-- <div class="container position-absolute shadow-sm"style="position:absolute;top:25%;left:20%;height:70%;"> -->
        <div class="header" style="position:absolute;left:20%;top:15%;font-family:serif;">
        <h1 > welcome</h1>
        <div class="card w-75" style="font-size:25px;width:70%">
            <p>Charity centers hs various needs such as food and cloth depend on its category <br>please ensure their need</p>
        </div>
        <button type="button" class="btn btn-primary mt-2 mb-2">choose center</button>
        <div class="card w-75" style="font-size:25px;width:70%" >
            <h2>
                you can donate by
            </h3>
            <p>direct visiting center <br>communicating with center supervisor <br>online donation</p>
        </div>

        </div>
    
    <!-- </div> -->

    <!-- Optional: Sidebar and Topbar Goes Here -->

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</body>
</html>


