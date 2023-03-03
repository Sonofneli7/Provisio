<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LuvtoLearnInc. - Rooms</title>

    <!-- php code to include seperated links file -->
    <?php require('includes/links.php'); ?>

    <!-- Internal styling -->
    <style>
        .custom-bg {
            background-color: #2ec1ac;
            border: 1px solid #2ec1ac;

        }

        .custom-bg:hover {
            background-color: #279e8c;
            border-color: #279e8c;
        }

        /* puts a small underline, under page title */
        .h-line {
            width: 150px;
            margin: 0 auto;
            height: 1.7px;
        }
    </style>
</head>

<body>

   	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	
 	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/header.jsp"/>
	

    <div class="my-5 px-4">
        <h2 class="fw-bold h-font text-center"> Our Rooms</h2>
        <div class="h-line bg-dark"></div>
    </div>

    <div class="container">
        <div class="row">
            <!-- Filters -->
            <div class="col-lg-3 col-md-12 mb-lg-0 mb-4 px-lg-0">
                <nav class="navbar navbar-expand-lg navbar-light bg-white rounded shadow">
                    <div class="container-fluid flex-lg-column align-items-stretch">
                        <h4 class="mt-2">FILTERS<h4>
                                <button class="navbar-toggler shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#filterDropdown" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <!-- flex column put the divs one on top of the other -->
                                <div class="collapse navbar-collapse flex-column align-items-stretch mt-2" id="filterDropdown">
                                    <div class="border bg-light p-3 rounded mb-3">
                                        <h5 class="mb-3" style="font-size: 18px; font-weight:bold;"> CHECK AVAILABILITY </h5>
                                        <!-- label and date picker -->
                                        <label class="form-label" style="font-size: 18px;">Check-in</label>
                                        <input type="date" class="form-control shadow-none mb-3">
                                        <label class="form-label" style="font-size: 18px;">Check-out</label>
                                        <input type="date" class="form-control shadow-none">
                                    </div>
                                    <div class="border bg-light p-3 rounded mb-3">
                                        <h5 class="mb-3" style="font-size: 18px; font-weight:bold;"> AMENITIES </h5>
                                        <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f1" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f1" style="font-size: 16px;">Pool</label>
                                        </div>
                                        <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f2" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f2" style="font-size: 16px;">Tennis</label>
                                        </div>
                                         <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f4" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f4" style="font-size: 16px;">Conference Area</label>
                                        </div>
                                        <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f3" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f3" style="font-size: 16px;">Gym</label>
                                        </div>
                                        <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f4" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f4" style="font-size: 16px;">Amusement Parks</label>
                                        </div>
                                         <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f4" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f4" style="font-size: 16px;">Bars</label>
                                        </div>
                                        <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f4" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f4" style="font-size: 16px;">Clubs</label>
                                        </div>
                                         <div class="mb-2">
                                            <!-- label and checkboxes -->
                                            <input type="checkbox" id="f4" class="form-check-input shadow-none me-1">
                                            <label class="form-check-label" for="f4" style="font-size: 16px;">Golf</label>
                                        </div>
                                    </div>
                                    <div class="border bg-light p-3 rounded mb-3">
                                        <h5 class="mb-3" style="font-size: 18px; font-weight:bold;"> GUESTS </h5>
                                        <div class="d-flex">
                                            <div class="me-3">
                                                <label class="form-label" style="font-size: 16px;"> Adults </label>
                                                <input type="number" class="form-control shadow-none">
                                            </div>
                                            <div>
                                                <label class="form-label" style="font-size: 16px;"> Children </label>
                                                <input type="number" class="form-control shadow-none">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </nav>
            </div>
            <!-- Placing in a horizontal card for our rooms -->
            <div class="col-lg-9 col-md-12 px-4">
                <div class="card mb-4 border-0 shadow">
                    <div class="row g-0 p-3 align-items-center">
                        <div class="col-md-5 mb-lg-0 mb-md-0 mb-3">
                            <img src="images/rooms/1.jpg" class="img-fluid rounded " alt="executivebusinessstay">
                        </div>
                        <!-- px-md-3 will adjust padding when in mid sized viewing -->
                        <div class="col-md-5 px-lg-3 px-md-3 px-0">
                            <h5 class="mb-3">Executive Business Stay</h5>
                            <hr>
                            <div class="features mb-3">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Queen Bed
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                     Bathroom
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Balcony
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Sofa
                                </span>
                                  <span class="badge rounded-pill text-bg-warning text-wrap">
                                     Desks
                                </span>
                            </div>
                            <!-- Incorporating in facilities -->
                            <div class="facilities mb-3">
                                <h6 class="mb-1">Amenities</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Free Wifi
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Conference Area
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Restaurants
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                   Pool
                                </span>
                                 <span class="badge rounded-pill text-bg-warning text-wrap">
                                   Bars
                                </span>
                            </div>
                            </div>
                        <div class="col-md-2 mt-lg-0 mt-md-0 mt-4 text-center">
                            <h6 class="mb-4 fw-bold">$150 per night</h6>
                            <a href="#" class="btn btn-sm w-100 text-white bg-primary shadow-none mb-2">Book Now</a>
                            <a href="#" class="btn btn-sm  w-100 btn-outline-dark shadow-none">Rewards Points</a>

                       </div>
                    </div>
                </div>
                <div class="card mb-4 border-0 shadow">
                    <div class="row g-0 p-3 align-items-center">
                        <div class="col-md-5 mb-lg-0 mb-md-0 mb-3">
                            <img src="images/rooms/2.jpg" class="img-fluid rounded " alt="familystay">
                        </div>
                        <!-- px-md-3 will adjust padding when in mid sized viewing -->
                        <div class="col-md-5 px-lg-3 px-md-3 px-0">
                            <h5 class="mb-3"> Family Stay</h5>
                            <hr>
                            <div class="features mb-3">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    2 Rooms
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    2 Bathrooms
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                     Balcony
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    2 Sofas
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                   TV
                                </span>
                            </div>
                            <!-- Incorporating in facilities -->
                            <div class="facilities mb-3">
                                <h6 class="mb-1">Amenities</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                     Free Wifi
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Amusement Parks
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Restaurants
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Pool
                                </span>
                            </div>                           
                        </div>
                        <div class="col-md-2 mt-lg-0 mt-md-0 mt-4 text-center">
                            <h6 class="mb-4 fw-bold">$300 per night</h6>
								  <a href="#" class="btn btn-sm w-100 text-white bg-primary shadow-none mb-2">Book Now</a>                           
								  <a href="#" class="btn btn-sm  w-100 btn-outline-dark shadow-none">Rewards Points</a>
                       </div>
                    </div>
                </div>
                <div class="card mb-4 border-0 shadow">
                    <div class="row g-0 p-3 align-items-center">
                        <div class="col-md-5 mb-lg-0 mb-md-0 mb-3">
                            <img src="images/rooms/3.jpg" class="img-fluid rounded " alt="suite">
                        </div>
                        <!-- px-md-3 will adjust padding when in mid sized viewing -->
                        <div class="col-md-5 px-lg-3 px-md-3 px-0">
                            <h5 class="mb-3"> Suite </h5>
                            <hr>
                            <div class="features mb-3">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    3 Rooms
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    3 Bathroom
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    2 Balconies
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    5 Sofas
                                </span>
                                 <span class="badge rounded-pill text-bg-warning text-wrap">
                                   2 Televisions
                                </span>
                                 <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Kitchen
                                </span>
                                 <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Small Bar
                                </span>
                            </div>
                            <!-- Incorporating in facilities -->
                            <div class="facilities mb-3">
                                <h6 class="mb-1">Amenities</h6>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Free Wifi
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Bars
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Clubs
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    TV
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                   Conference Area
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Tennis
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Pool
                                </span>
                                <span class="badge rounded-pill text-bg-warning text-wrap">
                                    Golf
                                </span>
                            </div>                            
                        </div>
                        <div class="col-md-2 mt-lg-0 mt-md-0 mt-4 text-center">
                            <h6 class="mb-4 fw-bold">$750 per night</h6>
                             	  <a href="#" class="btn btn-sm w-100 text-white bg-primary shadow-none mb-2">Book Now</a>                           
								  <a href="#" class="btn btn-sm  w-100 btn-outline-dark shadow-none">Rewards Points</a>
                       </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />

</body>

</html>