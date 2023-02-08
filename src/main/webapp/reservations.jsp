<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, reservations.* "%>
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
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <title>Provisio Reservations Page </title>
</head>

<body>


<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	  <!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
	
 	
 	<!-- List all reservations from the user, may need a scriplet instead of a servlet  -->
<%--  	<% List<Reservation> theReservations = (List<Reservation>)request.getAttribute("reservations"); %>
 --%>
 	
 	
 	
 <section class="banner">
    <h2>BOOK YOUR ROOM NOW</h2>
    <div class="card-container">
        <div class="card-img">
            <!-- image here -->

        </div>
        <div class="card-content">
            <h3>Reservation</h3>
            <form>
                <div class="form-row">
                    <select name="Check-in ">
                        <option value="day-select">Check-in </option>
                        <option value="day-select">Sunday</option>
                        <option value="day-select">Monday</option>
                        <option value="day-select">Tuesday</option>
                        <option value="day-select">Wednesday</option>
                        <option value="day-select">Thursday</option>
                        <option value="day-select">Friday</option>
                        <option value="day-select">Saturday</option>
                    </select>
                    <select name="hours" >
                        <option value="day-select">Select Time</option>
                        <option value="hour-select">6:00 am</option>
                        <option value="hour-select">8:00 am</option>
                        <option value="hour-select">10:00 am</option>
                        <option value="hour-select">12:00 pm</option>
                        <option value="hour-select">2:00 pm</option>
                        <option value="hour-select">4:00 pm</option>
                        <option value="hour-select">6:00 pm</option>
                        <option value="hour-select">8:00 pm</option>
                        <option value="hour-select">10:00 pm</option>
                        <option value="hour-select">12:00 am</option>
                    </select>
                     </div>
                    <div class="form-row">
                        <select name="Check-out">
                            <option value="day-select">Check-out</option>
                            <option value="day-select">Sunday</option>
                            <option value="day-select">Monday</option>
                            <option value="day-select">Tuesday</option>
                            <option value="day-select">Wednesday</option>
                            <option value="day-select">Thursday</option>
                            <option value="day-select">Friday</option>
                            <option value="day-select">Saturday</option>
                        </select>
                        <select name="hours" >
                            <option value="day-select">Select Time</option>
                            <option value="hour-select">6:00 am</option>
                            <option value="hour-select">8:00 am</option>
                            <option value="hour-select">10:00 am</option>
                            <option value="hour-select">12:00 pm</option>
                            <option value="hour-select">2:00 pm</option>
                            <option value="hour-select">4:00 pm</option>
                            <option value="hour-select">6:00 pm</option>
                            <option value="hour-select">8:00 pm</option>
                            <option value="hour-select">10:00 pm</option>
                            <option value="hour-select">12:00 am</option>
                        </select>
                        </div>
                    <div class="form-row">
                        <input type="text" placeholder="Full Name">
                        <input type="text" placeholder="Phone Number">
                    </div>
                    <div class="form-row">
                        <input type="number" placeholder="Adults" min="10">
                        <input type="number" placeholder="Children" min="10">
                    </div>
                    <input type="submit"  value="RESERVE ROOM">
                </div>
            </form>
        </div>
    </div>
</section>
 	
 	
 	
 	
 <%-- 	
 	<div class="">
 		<% for (Reservation res : theReservations) { %>
 			<div class="card stretched-link" style="width:80%; padding:50px">
 				<div class="card-body">
 					<h4>Check In: </h4><h5><%= res.getCheck_in() %></h5>
 					<h4>Check Out: </h4><h5><%= res.getCheck_out() %></h5>
 					<h4>Adults: </h4><h3><%= res.getAdults() %></h3>
 					<h4>Children: </h4><h5><%= res.getChildren() %></h5>
 					<h4>Room Type: </h4><h5><%= res.getRoom_type() %></h5>
 					<h4>Instructions: </h4><h5><%= res.getInstructions() %></h5>
 				</div>
 			</div>
 		<% } %>
 	</div>
 	 --%>
 	
 	
 	
 	
 		<%-- 
 		<% Enumeration keys = session.getAttributeNames();
		while (keys.hasMoreElements()) {
  		String key = (String)keys.nextElement();
  		out.println(key + ": " + session.getValue(key) + "<br>");
		} %>
		 --%>
		
		
		
		
		
		
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
 	



</body>
</html>
