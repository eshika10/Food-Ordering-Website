<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix='form' uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Food List</title>

   <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

   <!--custom css link-->
   <link rel="stylesheet" href="css/style3.css"/>


     <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
   
  
  
</head>
<body>


      <c:if test="${not empty model_success }">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Success!</strong> ${model_success}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
       </div>
     
     </c:if>
     
     
     <c:if test="${not empty model_error }">
         <div class="alert alert-danger alert-dismissible fade show" role="alert">
               <strong>Error!</strong> ${model_error}
               <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
         </div>
    
     </c:if>
     

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
   
     

        <form:form action="updateFoodForm" method="post" modelAttribute="modelFoodAtt" enctype="multipart/form-data">
        
                       <div>
							<label class="form-label name_design1" >Food Item Id</label> 
							<form:input  path="id" cssClass="form-control box" value="${model_food_item.getId()}" />
							<form:errors path="id" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design4" >Food Image</label> 
							<form:input type="file" path="foodimage" cssClass="form-control box" value="${model_food_item.getFoodimage()}" />
							<form:errors path="foodimage" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">Food Name</label> 
							<form:input  path="foodname" cssClass="form-control box" value="${model_food_item.getFoodname()}"/>
							<form:errors path="foodname" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">Food Category</label>
							 <form:input  path="foodcategory" cssClass="form-control box"  value="${model_food_item.getFoodcategory()}"/>
							 <form:errors path="foodcategory" cssClass="error_message_design" />
						</div>
						

                        <div>
							<label class="form-label name_design1">Food Price</label>
							 <form:input  path="foodprice" cssClass="form-control box"  value="${model_food_item.getFoodprice()}"/>
							 <form:errors path="foodprice" cssClass="error_message_design" />
						</div>
						
                        

						<div>
							<label class="form-label name_design1">Food Description</label> 
							<form:input  path="fooddesc" cssClass="form-control box" value="${model_food_item.getFooddesc()}" />
							<form:errors path="fooddesc" cssClass="error_message_design" />
							
						</div>
						
						<input type="submit" value="Update" class="btn btn-danger" />
		</form:form>

</body>
</html>