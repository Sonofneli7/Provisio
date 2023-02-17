<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="./styles.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous" type="text/javascript"></script>
<title>Provisio Rewards Page</title>
</head>
<body class="locations">
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />

	<h3>These Top Locations are only a click away!</h3>
	<div class="row row-cols-1 row-cols-md-4 gx-2 m-5">
		<div class="col">
			<div class="location-card h-75">
				<img src="images/orlando.jpg" class="card-img-top-locations rounded"
					alt="Orlando">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Orlando</h5>
					<p class="card-text">This is</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/miami.jpg" class="card-img-top-locations rounded" 
				alt="miami">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Miami</h5>
					<p class="card-text">This is</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/newyork.jpg" class="card-img-top-locations rounded"
					alt="lasvegas">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">New York</h5>
					<p class="card-text ">This is a longer</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/lasvegas.jpg" class="card-img-top-locations rounded"
					alt="newyork">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Las Vegas</h5>
					<p class="card-text">This is a longer</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>										
			</div>	
		</div>
	</div>
<h3 class="text-start">Top Destinations</h3>
<div class="row row-cols-1 row-cols-md-4 gx-2 m-5">
		<div class="col">
			<div class="location-card h-75">
				<img src="images/newdheli.jpg" class="card-img-top-locations rounded"
					alt="newdheli">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">New Dheli</h5>
					<p class="card-text">This is</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/rio.jpg" class="card-img-top-locations rounded"
				alt="rio">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Rio</h5>
					<p class="card-text">This is</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/laketahoe.jpg" class="card-img-top-locations rounded"
					alt="laketahoe">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Lake Tahoe</h5>
					<p class="card-text ">This is a longer</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/lasvegas.jpg" class="card-img-top-locations rounded"
					alt="la">
				<div class="card-body text-center">
					<h5 class="card-title mt-2">Las Vegas</h5>
					<p class="card-text">This is a longer</p>
					<a href="#" class="btn btn-primary">Choose Location</a>
				</div>										
			</div>	
		</div>
	</div>
	

	<!-- FOOTER INCLUDE  -->
	<jsp:include page="./partials/footer.jsp" />

</body>
</html>
