@extends('donor.donor_dashboard')

@section('content')
@endsection

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>list of centers</title>
</head>



<body>
 <div class="container-fluid" style="position:absolute;top:10%;left:10%;height:100vh;width:60%">
    <table class="table table-striped">
        <thead>
            <th scope="col">sn</th>
            <th scope="col">name</th>
            <th scope="col">location</th>
            <th scope="col">capacity</th>
            <th scope="col">kind</th>
            
        </thead>
        <tbody>
            @foreach($centers as $center )
            <tr scope="row"  >
            <td>{{$center->id}}</td>
            <td>{{$center->centerName}}</td>
            <td>{{$center->location}}</td>
            <td>{{$center->capcity}}</td>
            <td>{{$center->charityType_id}}</td>
            <td>
                <button class=" btn btn-bg-primary opacity-50"></button>
                <a href="{{asset(route('viewmore'))}}">view more</a>
            </td>
            </tr>
            @endforeach

        </tbody>

    </table>

    
 </div>
</body>
</html>