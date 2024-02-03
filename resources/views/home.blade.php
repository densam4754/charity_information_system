@extends('layouts.app')

@section('content')

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Information System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JezqaJWqSAuOpq5q7LN2i6sNuKn5z4nHD6u060Vi6CWQaSFljEO24KgQv5GrqFcuBi" crossorigin="anonymous">
    <style>
        body{
            /* background-color:blue; */
            position:center;
            display:cover;
            background-image:url();
            font-family:serif;
             
        }
    </style>
</head>

<body >
    <div class="container-fluid">
        
        <div class="row" style="background-color: indigo; color: white; height: 100vh;background-image:url('{{asset('dist\img\photo1.png')}}')">
            <div class="col-md-6 py-5 justify-content-center">
                <h1 class="display-4">Welcome to the Charity Information System</h1>
                <p class="lead">Find charities that align with your values and make a difference in the world.</p>
                <a href="{{ asset(route('viewadmin')) }}" class="btn btn-lg btn-primary">share happiness</a>
            </div>
            <div class="col-md-6 d-none d-md-block">
                <!-- <img src="https://images.unsplash.com/photo-1524037207053-65d84d3baf24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90Y290fHx8fHx8&auto=format&fit=crop&w=800&q=80" alt="Charity volunteers helping people in need" style="width: 100%; height: 100%; object-fit: cover;"> -->
            </div>
        </div>
    </div>
    
    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2ePGFaNrHqasSshGzfTKyHUTTwStenXp8a6apxNwogUPui7bLk/SY+I+z9Gj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-DQV9Fk0ZSiThBePpCkatfXpzP3gQOevLSLTaZrG4PLIaY2tTMAaOnzBIkTcNLOoW8" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4qnxEvFfXkHqmzTfUksufNRwZGOOvbGbPqftVxaG2ToTA9tP5EsQzM6PSaPW1Ek0" crossorigin="anonymous"></script>
</body>

</html>
@endsection

