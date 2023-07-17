
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
    <link rel="stylesheet" href="css/style1.css"/>

    <title>Register Page</title>

     <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">

</head>
<body >
    
    	<c:if test="${not empty model_reg_success}">
				<div class="row">
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						${model_reg_success}
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
				</div>
			</c:if>
			
			<c:if test="${not empty model_reg_error}">
				<div class="row">
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
						${model_reg_error}
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
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
               <div class="col-3"></div>
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
   
      
           <form action="registerForm" method="post" class="register_form_design" >
               <h2 style="color:azure">Register</h2>
               <input class="box" name="name" type="text"  placeholder="Enter your name"/>
               <input class="box" name="email" type="text"  placeholder="Enter your email"/>
               <input class="box" name="password" type="password"  placeholder="Enter your password"/>
               <input class="box" name="phoneno" type="text"  placeholder="Enter your phoneno"/>
               <input class="box" style="background-color:red" value="Register" type="submit" placeholder="register"/>
           </form>

      
</body>
</html>