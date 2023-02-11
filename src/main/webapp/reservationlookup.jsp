<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Provisio Beach and Resorts -Reservation Lookup Page </title>
</head>
<body>
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY --> 
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	 <jsp:include page="partials/registration.jsp" />
	
	
    <section class="search-sec">
        <div class="container">
            <form action="#" method="post" novalidate="novalidate">
                <div class="row">
                    <div class="col-lg-12">
                      <div class="row align-items-start">
                            <div class="col-lg-3 col-lg-3 col-sm-12 p-0">
                                <input type="date" class="form-control search-slt"  placeholder="Check-in">
                            </div>
                            <div class="col-lg-3 col-lg-3 col-sm-12 p-0">
                                <input type="date" class="form-control search-slt"  placeholder="Check-out">
                            </div>
                            <div class="col-lg-3 col-lg-3 col-sm-12 p-0">
                                <select class="form-control search-slt" id="exampleFormControlSelect1">
                                    <option>Select Hotel</option>
                                    <option>Old Key West</option>
                                    <option>Provisio South Beach Resort</option>
                                    <option>Grand Provisio Resort</option>
                                   
                                </select>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 p-3">
                                <button type="button" class="btn wrn-btn">Search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
    
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
 	
    
</body>
</html>
