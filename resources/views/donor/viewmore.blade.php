<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ifk</title>
</head>
<body>
<div class="container">
        <!-- <h1>{{ $centers->centerName }}</h1> -->
        <p><strong>Address:</strong> {{ $centers->address }}</p>
        <p><strong>Capacity:</strong> {{ $centers->capcity }}</p>
        <p><strong>Description:</strong> {{ $centers->description }}</p>
        <p><strong>Contact:</strong> {{ $centers->contact }}</p>
        <p><strong>Location:</strong> {{ $centers->location }}</p>
        <!-- Add more detailed information as needed -->
</div>

</body>
</html>