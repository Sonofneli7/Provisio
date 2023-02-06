<%-- <%@ page import="java.util.*, hotel.jdbc.*"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Provisio Hotel List </title>
</head>
<%-- <% 
//get the hotels from the request object (sent by servlet) 
List<Hotel> theHotels = 
            (List<Hotel>) request.getAttribute("HOTEL_LIST");

%> --%>
<body>


<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
<jsp:include page="partials/navbar.jsp" /> 



<!-- div wrapper -->
<div class="input-wrapper">
  <div class="fa-solid fa-magnifying-glass"></div>	
  <input type="text" placeholder="Search"/>
  <div class="fa-solid fa-xmark"></div>
</div>

<div class="places">
  <div class="clearfix">
    <img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
  <div class="clearfix">
    <img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
  <div class="clearfix">
    <img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
</div>
  
  
  
 		
 	
 	
 	<!-- List all hotels using a scriplet, have a reserve button that will redirect to the booking.jsp that will have a form, and action to a servlet.  -->
     <%-- <%= theHotels %> --%>
 	
 	<!-- FOOTER INCLUDE  -->
<jsp:include page="partials/footer.jsp" /> 

</body>



 
</html>


