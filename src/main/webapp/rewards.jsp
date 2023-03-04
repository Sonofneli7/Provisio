<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, rewards.*"%>
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
	

<!-- Checking if there is a session, if there isn't, user does not have access to go to the path -->
 	<% if (session.getAttribute("first_name") == null){ 
 		response.sendRedirect("index.jsp");
 	} else { %>


	
 	
 		<% List<RewardsRes> resList = (List<RewardsRes>)request.getAttribute("rewardsResList"); %>
 		
 		<div id="wrapper">
 			<div style="margin-top: 100px">
 				<h3 class="text-center fw-bold h-line">Rewards</h3>
 			
 				<br><br>
 				<h2 class="text-center fw-bold h-line"><%=session.getAttribute("first_name")%> <%=session.getAttribute("last_name") %></h2>
 			</div>
 		</div>
 		
 		
 		
 		<% if (resList.isEmpty() == false) { %>
 		
 		<div style="width:60%; text-align: right; margin: 0 auto;">
 			<p class="justify-content-end" style="font-weight: bold;" >Total Points: <%=request.getAttribute("totalPoints") %></p>
 		</div>
 		
 	<div style="margin: 0 auto; width: 75%; text-align: center;">
 			<table class="table table-hover table-bordered">
 				<thead>
    				<tr>
      					<th scope="col">Name</th>
				      	<th scope="col">Confirmation Code</th>
				      	<th scope="col">Location</th>
				      	<th scope="col">Hotel Name</th>
				      	<th scope="col">Check-in</th>
				      	<th scope="col">Check-out</th>
				      	<th scope="col">Rewards Points</th>
				      	<th scope="col"></th>
    				</tr>
  				</thead>
  				
 		<% for (RewardsRes res : resList) { %>
 				<tbody>
 					<tr class="table-primary">
      					<th scope="row"><%=res.getFirst_name() + " " + res.getLast_name() %></th>
      					<td><%=res.getConfirmation_code() %></td>
      					<td><%=res.getCity() + ", " + res.getState() %></td>
      					<td><%=res.getHotel_name() %></td>
      					<td><%=res.getCheck_in() %></td>
      					<td><%=res.getCheck_out() %></td>
      					<td><%=res.getPoints() %></td>
      					<td style="width: 10%;">
      						<form action="IndividualResSum" method="POST" style="margin:0 auto;">
 								<input type="hidden" name="reservation_id" value="<%=res.getReservation_id()%>" />
 								<input type="hidden" name="adults" value="<%=res.getAdults()%>" />
 								<input type="hidden" name="children" value="<%=res.getChildren()%>" />
 								<input type="hidden" name="instructions" value="<%=res.getInstructions()%>" />
 								<input type="hidden" name="confirmation_code" value="<%=res.getConfirmation_code()%>" />
 								<input type="hidden" name="check_in" value="<%=res.getCheck_in()%>" />
 								<input type="hidden" name="check_out" value="<%=res.getCheck_out()%>" />
 								<input type="hidden" name="points" value="<%=res.getPoints()%>" />
 								<input type="hidden" name="room_type" value="<%=res.getRoom_type()%>" />
 								<input type="hidden" name="hotel_id" value="<%=res.getHotel_id()%>" />
 								<input type="hidden" name="user_id" value="<%=res.getUser_id()%>" />
 								<input type="hidden" name="city" value="<%=res.getCity()%>" />
 								<input type="hidden" name="state" value="<%=res.getState()%>" />
 								<input type="hidden" name="zip" value="<%=res.getZip()%>" />
 								<input type="hidden" name="picture" value="<%=res.getPicture()%>" />
 								<input type="hidden" name="hotel_name" value="<%=res.getHotel_name()%>" />
 								<input type="hidden" name="address" value="<%=res.getAddress()%>" />
 								<input type="hidden" name="phone_number" value="<%=res.getPhone_number()%>" />
 								<input type="hidden" name="place_id" value="<%=res.getPlace_id()%>" />
 								<input type="hidden" name="amenities" value="<%=res.getAmenities()%>" />
 								<input type="hidden" name="descrip" value="<%=res.getDescrip()%>" />
 								<input type="submit" name="submit" id="btn2" value="View Reservation" />
 							</form> 
      					</td>
    				</tr>
    			</tbody>

 				

 			<% } %>
    		</table>
    	</div>
    	<% } else { %>
    	
 		<div id="wrapper">
 			<div style="margin-top: 25px; color: red">
 				<h3 class="text-center fw-bold h-line">There are no reservations are the moment</h3>
 				<br><br>
 			</div>
 		</div>
 		
 		<% } %>

 	<% } %>
 	
 	
 	
 		<div id="values">
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/values.jsp"/>
	</div>
	
	
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/touristicPlaces.jsp"/>
 	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />

</body>
</html>