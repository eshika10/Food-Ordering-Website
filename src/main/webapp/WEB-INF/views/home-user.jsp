
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!--custom css link-->
    <link rel="stylesheet" href="css/style2.css"/>

    <title>User</title>

     <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
    
    <!-- Chart.js link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    
     <!-- Script Link -->
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    
    <script type="text/javascript">
    
        function openProfilePage(id){
        	 window.location.href='/profileUser?id='+encodeURIComponent(id);
        }
        
        function openFoodMenuPage(email){
        	window.location.href='/foodMenu?email='+encodeURIComponent(email);
        }
        
       
      
       
    </script>

</head>
<body  style=" background-image: url('../images/counter.jpeg');">
         
         
      <div class="container-fluid bg-dark header_design ">
        <div class="container">
            <div class="row">
               <div class="col-5 food_logo_design">
                  <div class="row">
                      <div class="col-2">
                          <img src="images/food.png" alt="food" width="50" height="50" />
                      </div>
                      <div class="col-3 brandname_design" >
                          <h6 style="color: azure;margin-top:10px;">Food Circles</h6>
                      </div>
                  </div>
                  
               </div>
               <div class="col-3" style="color:white;margin-top:10px">Welcome ${session_user.getName()}</div>
               <div class="col-4 dropdown_design">
                          
                          <div class="dropdown">
                             
                              <button class="btn  dropdown-toggle " type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="color: azure; " >
                                  <i class="ri-align-justify"></i>
                              </button>
                              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="#">Home</a></li>
                                <li><a class="dropdown-item" href="login">Logout</a></li>
                                <li><a class="dropdown-item" href="register">Register</a></li>
                                <li><a class="dropdown-item" href="/">About Us</a></li>
                                <li><a class="dropdown-item" href="/">Conatct Us</a></li>
                              </ul>
                          </div>
                      </div>
                      
                  
               </div>
            </div>
        </div>
   
      
         <div>
		<nav
			class="navbar navbar-expand-sm bg-secondary navbar-dark container-fluid">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="collapsibleNavbar">
					<ul class="navbar-nav" style="text-align: center">
					    <li class="nav-item"><a class="nav-link" href="#">Home</a>
					    
					    <li class="nav-item"><a class="nav-link" onclick="openProfilePage('${session_user.getId()}')">My Profile</a>
					    
						

					    <li class="nav-item"><a class="nav-link" onclick="openFoodMenuPage('${session_user.getEmail()}')">Place Order</a>
						
						<li class="nav-item"><a class="nav-link" href="#">My Orders</a>
						
						
					</ul>
				</div>
			</div>
		</nav>
	</div>	
	
	<div class="container-fluid" style="width:700px;height:200px;padding-right:20px;padding-left:20px;border-radius:15px;margin-top:30px;">
	      <div  class="row" style="background-color: #FF8C00;border-radius:15px" >
	              <div  class="col-5">
	                    <img alt="" src="../images/userhalfcut.png" height="200px">
	              
	              </div>
	              <div  class="col-4" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
	                  <h2 style="color:black">34% DISCOUNT</h2>
	                  <h3>Easy Payment</h3>
	                  <h4>Delievery At Home</h4>
	              </div>
	      </div>
	</div>
         
      
</body>
</html>