        
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

    <title>Login Page</title>

     <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">

</head>
<body >
     

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
               <div class="col-3" style="color:white;margin-top:10px">Welcome Admin</div>
               <div class="col-4 dropdown_design">
                          
                          <div class="dropdown">
                             
                              <button class="btn  dropdown-toggle " type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="color: azure; " >
                                  <i class="ri-align-justify"></i>
                              </button>
                              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="/">Home</a></li>
                                <li><a class="dropdown-item" href="login">Login</a></li>
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
					    <li class="nav-item"><a class="nav-link" href="profile-admin">Home</a>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Food Items</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="addEmpdetails">Add Food Items</a></li>
								<li><a class="dropdown-item" href="emplist">List Of Food Items</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Manage Customers</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="addProducts">View Customers</a></li>
								<li><a class="dropdown-item" href="productsList">List Of Customers</a></li>
							</ul>
						</li>
						
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Manage Orders</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="addProducts">Add Order</a></li>
								<li><a class="dropdown-item" href="productsList">List Of Orders</a></li>
							</ul>
						</li>
						
						<li class="nav-item"><a class="nav-link" href="profile-admin">Customer review</a>
						
					</ul>
				</div>
			</div>
		</nav>
	</div>	

      
</body>
</html>
      

