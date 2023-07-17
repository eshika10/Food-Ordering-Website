
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

   <!--custom css link-->
   <link rel="stylesheet" href="css/style3.css"/>

    <title>Add Food Items</title>

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
   
     
         
        <form:form action="addFoodItemsForm" method="post" modelAttribute="foodAddAttr" enctype="multipart/form-data">
                        <h2 style="color:azure">Add Food Items</h2>
					
					
					    <div>
							<label class="form-label name_design1">Food Name</label> 
							<form:input  path="foodname" cssClass="form-control box" />
							<form:errors path="foodname" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design3">Image</label> 
							<form:input type="file" path="foodimage" cssClass="form-control box" />
							<form:errors path="foodimage" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">Food Category</label> 
							<form:input  path="foodcategory" cssClass="form-control box" />
							<form:errors path="foodcategory" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design2">Price</label> 
							<form:input path="foodprice" cssClass="form-control box" />
							<form:errors path="foodprice" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">Food Description</label> 
							<form:textarea path="fooddesc" cssClass="form-control box" />
							<form:errors path="fooddesc" cssClass="error_message_design" />
						</div>
						
						
						
						
						
                        
						
						
						
						<input type="submit" value="Add Food Item" class="btn btn-danger" />
	   </form:form>
                     
         
         
         
         
         
         
         
         
     	
</body>
</html>