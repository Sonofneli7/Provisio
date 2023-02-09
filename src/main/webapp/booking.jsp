<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link rel="stylesheet" type="text/css" href="./booking.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<title>Provisio Booking Page</title>
</head>
<body>

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
 	
 	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=R, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Reservation Form</title>
</head>
<body>
    <section class="banner">
        <h2>BOOK YOUR ROOM NOW</h2>
        <div class="card-container">
            <div class="card-img">
                <!-- image here -->

            </div>
            <div class="card-content">
                <h3>Make Your Reservation</h3>
                <form>
                    <div class="form-row">
                        <input type="text" placeholder="Check-in">
                        <input type="date" placeholder="Check-in">
                    </div>
                    <div class="form-row">
                        <input type="text" placeholder="Check-out">
                        <input type="date" placeholder="Check-in">
                    </div>
                    <div class="form-row">
                        <select name="Rooms">
                            <option value="day-select">Room Type </option>
                            <option value="day-select">Basic</option>
                            <option value="day-select">Family</option>
                            <option value="day-select">Suite</option>
                            
                        </select>
                        <select name="Hotels" >
                            <option value="hotel-select">Choose Hotel</option>
                            <option value="hotel-select">Old Key West</option>
                            <option value="hotel-select">Provisio South Beach</option>
                            <option value="hotel-select">Grand Provisio</option>
                        </select>
                          </div>
                          <!-- Textarea 4 rows height -->
                        <div class="form-outline">
                            <textarea class="form-control" id="instructions" rows="4" placeholder="List Special Instruction Here"></textarea>
                            <label class="form-label" for="instructions"></label>
                            <input type="submit"  value="RESERVE ROOM" class="center">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>

	
          

	
	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />

</body>
</html>












	
