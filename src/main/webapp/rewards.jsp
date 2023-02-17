<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Provisio Rewards Page </title>
</head>
<body>



<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
  <div class="bg-image"
     style="background-image: url('images/home.png');
            height: 100vh">


 	<h1 class="text-center text-white">Your Rewards</h1>
  <hr class="border border-primary border-3 opacity-75">
 <table class="table table-hover table-bordered">
 <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Reservation</th>
      <th scope="col">Location</th>
      <th scope="col">Check-in</th>
      <th scope="col">Check-out</th>
      <th scope="col">Rewards Points</th>
    </tr>
  </thead>
  <tbody>
    <tr class="table-primary">
      <th scope="row">Name from reservation</th>
      <td>Randomized Reservation#</td>
      <td>Location chosen</td>
      <td> Recorded Check-in</td>
      <td> Recorded Check-out</td>
      <td> Points gained by room style</td>
    </tr>
    <tr class="table-secondary">
      <th scope="row">Name from Reservation</th>
      <td>Randomized Reservation#</td>
      <td>Location Chosen</td>
      <td> Recorded Check-in</td>
      <td> Recorded Check-out</td>
      <td> Points gained by room style</td>
    </tr>
    <tr class="table-success">
      <th scope="row">Name from Reservation</th>
      <td>Randomized Reservation#</td>
      <td>Location Chosen</td>
      <td> Recorded Check-in</td>
      <td> Recorded Check-out</td>
      <td> Points gained by room style</td>
    </tr>
  </tbody>
</table>
</div>
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />

</body>
</html>
