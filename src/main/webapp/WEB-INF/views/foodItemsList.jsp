<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
    
<meta charset="ISO-8859-1">
<title>Food Item List</title>
     
    <!-- Script Link -->
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
      
      <script>
          function editFoodList(id){
        	  window.location.href='/editFood?id='+encodeURIComponent(id);
          }
          
          function deleteFoodList(id){
        	  window.location.href='/deleteFood?id='+encodeURIComponent(id);
          }
      
      </script>
     
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
        
       <h2>Food List</h2>
            <p>Below table displays the available food items.</p>            
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Food Image</th>
                        <th>Food Name</th>
                        <th>Food Category</th>
                        <th>Food Price</th>
                        <th>Food Description</th>
                        <th style="text-align=center;">Update</th>
                        <th style="text-align=center;">Delete</th>
                    </tr>
                </thead>
                <tbody>
                
                    <c:forEach var="product" items="${model_food_list}">
                        <tr>
                            <td><img src="${product.getFoodimage()}" height="100"/></td>
                           <td>${product.getFoodname()}</td>
                            <td>${product.getFoodcategory()}</td>
                           <td>Rs.${product.getFoodprice()}</td>
                           <td>${product.getFooddesc()}</td>
                           
                           <td style="text-align: center;"> 
                           
                                <button class="btn btn-secondary" onclick="editFoodList('${product.getId()}')" > 
                    			      
                    			      <i class="ri-edit-2-fill"></i>
                    			 </button>
                    			
                    		</td>
                    		
                    		<td style="text-align: center;"> 
                           
                                <button class="btn btn-secondary" onclick="deleteFoodList('${product.getId()}')" > 
                    			      <i class="ri-delete-bin-5-fill"></i>
                    			 </button>
                    			
                    		</td>
                    		
                        </tr>
                    
                    </c:forEach>
                </tbody>
            </table>

</body>
</html>