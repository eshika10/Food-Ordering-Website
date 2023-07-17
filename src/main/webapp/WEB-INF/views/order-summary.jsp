<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
    
    
    <!-- Css Link -->
    <link rel="stylesheet" href="../css/style6.css"/>
    
<meta charset="ISO-8859-1">
<title>Order Summary</title>
     
      <!-- Script Link -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script type="text/javascript">
    
        
      function openOrderSummary(id){
      	  window.location.href='/orderSummary?id='+encodeURIComponent(id);
      }
      
      
       
    </script>
     
</head>
<body style="background-image: url('../images/counter.jpeg');">
     
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
               <div class="col-3" style="color:white;margin-top:10px">Welcome ${model_user.getName()}</div>
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
        
       <h3 style="text-align:center;color:red">All Orders</h3>
       
       <div class="container-fluid form_design">
       
            <form:form  modelAttribute="orderSummaryAttr">
                        
                           <img src="${model_food.getFoodimage()}" height="100"/><hr style="color:white">
                            ${model_food.getFoodname()}<hr style="color:white">
                            ${model_food.getFoodcategory()}<hr style="color:white">
                            Rs.${model_food.getFoodprice()}<hr style="color:white">
                            ${model_food.getFooddesc()}<hr style="color:white">
                           
                           
                    		
                        
                    
             </form:form>
       
       </div>
           
</body>
</html>