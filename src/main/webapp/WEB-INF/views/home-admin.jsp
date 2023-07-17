
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

    <title>Admin</title>

     <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
    
    <!-- Chart.js link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

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
                                <li><a class="dropdown-item" href="adminHome">Home</a></li>
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
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Food Items</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="addFoodItems">Add Food Items</a></li>
								<li><a class="dropdown-item" href="foodItemsList">List Of Food Items</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown">Manage Customers</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="viewCustomers">List of Customers</a></li>
								
							</ul>
						</li>
					
						
						<li class="nav-item"><a class="nav-link" href="profile-admin">Customer review</a>
						
					</ul>
				</div>
			</div>
		</nav>
	</div>	
         
         
         <div class="row">
         
              <div class="col-6" style="height:450px;">
                 <div class="row">
                      <div class="col-4" style="height:250px;width:300px">
                      
                          <div class="card card_design" style="width: 18rem; background-color: rgba(236, 16, 16, 0.5);">
                            
                            <i class="ri-user-fill"></i> <h3>Total Users</h3>
                            
                          <hr style="color:black">
                            <div class="card-body">
                                <h3 style="text-align:center">265K</h3>
                            </div>
                         </div>
                      
                      </div>
                      <div class="col-4" style="height:250px;width:300px">
                          <div class="card card_design" style="width: 18rem;background-color: rgba(248, 248, 3, 0.774);">
                            
                            <i class="ri-earth-fill"></i> <h3>Popularity</h3>
                            
                            <hr style="color:black"></hr>
                            <div class="card-body">
                                <h3 style="text-align:center">+90%</h3>
                            </div>
                         </div>
                      
                      </div>
                 
                 
                 </div>
                  <div class="row">
                       <div class="col-4" style="height:250px;width:300px">
                              <div class="card card_design" style="width: 18rem;background-color: rgba(37, 24, 222, 0.5);">
                            
                                <i class="ri-hand-heart-fill"></i> <h3>Total Sales</h3>
                            
                                <hr style="color:black">
                            <div class="card-body">
                                <h3 style="text-align:center">300K</h3>
                            </div>
                         </div>
                      
                      </div>
                      <div class="col-4" style="height:250px;width:300px">
                            <div class="card card_design" style="width: 18rem;background-color: rgba(226, 14, 170, 0.5);">
                            
                              <i class="ri-currency-line"></i> <h3>Total Profit</h3>
                            
                               <hr style="color:black">
                              <div class="card-body">
                                <h3 style="text-align:center">$5M</h3>
                              </div>
                         </div>
                      
                      </div>
                 
                 
                 
                 </div>
         
             </div>
         
             <div class="col-6" style="height:450px;">
         
               <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
         
            </div>
         
         
         
         
         </div>
         
         <footer  class="container-fluid mt-2 footer_design">
            <div class="row">
                <div class="col-3">
                                                             
                </div>
                <div class="col-3 product_design" >
                    
                </div>
                <div class="col-3 product_design">
                    
                   
                </div>
                <div class="col-3 product_design">
                    
                </div>
            </div>
            <div class="row">
                  <div class="col-3"  style="color:azure;"></div>
                  <div class="col-6" style="text-align: center;color:azure;"><h7>© 2023 www.foodcircles.com. All rights reserved.</h7>
                  </div>
                  <div class="col-3" >
                      <div class="row" >
                          <div class="col-1" style="color:azure;"><i class="ri-instagram-fill"></i></div>
                          <div class="col-1" style="color:azure"><i class="ri-twitter-fill"></i></div>
                          <div class="col-1" style="color:azure"><i class="ri-facebook-circle-fill"></i></div>
                         
                      </div>
                      
                  </div>
                  <hr  style="color:azure;margin-bottom:20px;">
            </div>
    </footer>
         
         
         
         
         
         
         
         
         <script>
					var xValues = ["Pizza", "Mutar Paneer", "Pasta", "Biryani", "Momos"];
					var yValues = [55, 49, 44, 24, 15];
					var barColors = [
						"red", "green","blue","orange","brown"
					];
					
					new Chart("myChart", {
					  type: "pie",
					  data: {
					    labels: xValues,
					    datasets: [{
					      backgroundColor: barColors,
					      data: yValues
					    }]
					  },
					  options: {
					    title: {
					      display: true,
					      text: "Top pick dishes by the customer."
					    }
					  }
					});
          </script>
         
     	
</body>
</html>