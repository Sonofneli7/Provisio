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
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   	<jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	

	
	
	<div class="container" style="padding: 25px 50px 75px 50px;">
	<h3 style= "text-align:center">Your Reservation</h3>
	
	<table class="table table- bordered table-striped table-hover">
		<tr>
		
			<th> Check In </th>
			<th> Check out </th>
			<th> Adults </th>
			<th> Children </th>
			<th> Room Type</th>
			<!-- <th> Amenities</th>   add to the sql table for booking -->
			<th> Confirmation Code</th>
			<th> Instructions</th>
			<th> ID</th>
		</tr>
		<tr>
			<td><%=request.getAttribute("check_in")%></td>
			<td><%=request.getAttribute("check_out")%></td>
			<td><%=request.getAttribute("adults")%></td>
			<td><%=request.getAttribute("children")%></td>
			<td><%=request.getAttribute("room_type")%></td>
			<td><%=request.getAttribute("confirmation_code")%></td>
			<td style="word-wrap: break-word"><%=request.getAttribute("instructions")%></td>
			<td><%=request.getAttribute("reservation_id")%></td>
		</tr>
	</table>
	<input type="hidden" value="<%=request.getAttribute("reservation_id")%>" />
		
<!-- Commented out this section to not get rid of code but now has updated table format: Nelson	 -->
		
	<!-- <h3>Check In</h3> -->
	
	
	<%-- <h4><%=request.getAttribute("check_in")%></h4>
	<h3>Check Out</h3>
	<h4><%=request.getAttribute("check_out")%></h4>
	<h3>Adults</h3>
	<h4><%=request.getAttribute("adults")%></h4>
	<h3>Children</h3>
	<h4><%=request.getAttribute("children")%></h4>
	<h3>Room Type</h3>
	<h4><%=request.getAttribute("room_type")%></h4>
	<h3>Confirmation Code</h3>
	<h4><%=request.getAttribute("confirmation_code")%></h4>
	<h3>Instructions</h3>
	<h4><%=request.getAttribute("instructions")%></h4><br>
	

	<h3>ID</h3>
	<h4><%=request.getAttribute("reservation_id")%></h4> --%>
	
<!--End of Commented out section: Nelson  -->

	<form style="display: inline" action="cancel-reservation" method="POST">
		<input type="hidden" value=<%=request.getAttribute("reservation_id")%> name="reservation_id"/>
		<button name="cancelled" id="btn2">Cancel Reservation</button>
	</form>
	
	</div>

 
 
 
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	

</body>
</html>
