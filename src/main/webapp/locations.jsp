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
<title>Provisio Locations Page</title>
</head>
<body id="locations">
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />

	<h2 class="fw-bold text-warning" >These Top Locations are only a click away!</h2>
	<h4 class="fw-bold mt-5">Top Cities</h4>
	
	<div class="row row-cols-1 row-cols-md-4 gx-2 mt-0 m-5">
		<div class="col">
			<div class="location-card h-75 rounded">
				<img src="images/orlando.jpg" class="card-img-top-locations rounded"
					alt="Orlando">
				<div class="card-body text-center ">
					<h5 class="card-title  mt-2 fw-bold fst-italic">Orlando <br> Old Key Provisio</h5>
					<p class="card-text mt-2 fst-italic">325 S Orange Ave <br> Orlando, FL 32801 <br> (407) 313-9000 </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/miami.jpg" class="card-img-top-locations rounded" 
				alt="miami">
				<a href="booking.jsp"></a>
				<div class="card-body text-center">
					<h5 class="card-title text-center mt-2 fw-bold fst-italic"> Miami <br> Proviso South Beach</h5>
					<p class="card-text mt-2 fst-italic"> 801 Collins Ave <br> Miami Beach, FL 33139 <br> (305) 531-2222</p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/newyork.jpg" class="card-img-top-locations rounded"
					alt="lasvegas">
				<div class="card-body text-center">
					<h5 class="card-title mt-2 fw-bold fst-italic"> New York <br> The Grand Provisio</h5>
					<p class="card-text mt-2 fst-italic"> 870 7th Ave <br> New York, NY 10019 <br> (212) 247-8000  </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>				
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/lasvegas.jpg" class="card-img-top-locations rounded"
					alt="newyork">
				<div class="card-body text-center ">
					<h5 class="card-title mt-2 fw-bold fst-italic">Las Vegas <br> MGM Provisio </h5>
					<p class="card-text mt-2 fst-italic"> 2535 S Las Vegas Blvd <br> Las Vegas, NV 89109 <br> (702) 761-7000  </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>										
			</div>	
		</div>
	</div>
<h4 class="text-start fw-bold">Top Destinations</h4>
<div class="row row-cols-1 row-cols-md-4 gx-2 mt-0 m-5">
		<div class="col">
			<div class="location-card h-75">
				<img src="images/newdheli.jpg" class="card-img-top-locations rounded"
					alt="newdheli">
				<div class="card-body text-center ">
					<h5 class="card-title mt-2 fw-bold fst-italic">New Dheli <br>Taj Provisio </h5>
					<p class="card-text"> 106, Babar Rd <br> Delhi 110001, India <br> +91 91118 91115  </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/rio.jpg" class="card-img-top-locations rounded"
				alt="rio">
				<div class="card-body text-center">
					<h5 class="card-title mt-2 fw-bold fst-italic">Rio de Janiero <br> Astoria Provisio</h5>
					<p class="card-text">TAv. Atlântica, 1020 <br> Copacabana, Rio de Janeiro Brazil <br> +55 21 3501-8000  </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/laketahoe.jpg" class="card-img-top-locations rounded"
					alt="laketahoe">
				<div class="card-body text-center">
					<h5 class="card-title mt-2 fw-bold fst-italic">Lake Tahoe <br> Provisio Lodge </h5>
					<p class="card-text ">6589 N Lake Blvd Box 188 <br> Tahoe Vista, CA 96148 <br> (530) 546-4281  </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="location-card h-75">
				<img src="images/venice.jpg" class="card-img-top-locations rounded"
					alt="la">
				<div class="card-body text-center">
					<h5 class="card-title mt-2 fw-bold fst-italic">Italy <br> Provio Venecia</h5>
					<p class="card-text">Riva del Ferro, 5149 <br>30124 Venezia VE, Italy <br> +39 041 520 9166 </p>
					<a href="booking.jsp" class="btn btn-warning">RESERVE NOW</a>
				</div>										
			</div>	
		</div>
	</div>
	

	<!-- FOOTER INCLUDE  -->
	<jsp:include page="./partials/footer.jsp" />

</body>
</html>

