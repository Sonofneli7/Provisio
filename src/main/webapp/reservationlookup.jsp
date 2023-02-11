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
    <title>Provisio Beach and Resorts -Contact Us Page </title>
</head>
<body class="bg-light">
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY --> 
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	 <jsp:include page="partials/registration.jsp" />

     <div class="my-5 px-4">
     <h2 class="fw-bold h-font text-center"> Find Your Reservation</h2>
     <div class="h-line bg-dark"></div>
    
    <div class="container">
        <div class="row height d-flex justify-content-center align-items-center">
          <div class="col-md-8">
            <div class="search">
              <i class="bi bi-search"></i>
              <input type="text" class="form-control" placeholder="Search for Hotel Reservation">
              <button class="btn btn-primary">Search</button>
            </div>
          </div>     
        </div>
    </div>
  

    
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
 	
</body>
</html>