<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>

    <!--custom css link-->
   <link rel="stylesheet" href="css/style3.css"/>

  <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!--favicon link-->
     <link rel="icon" type="image/png" href="images/favicon.png">

     <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
    
    
<meta charset="ISO-8859-1">
<title>Profile User</title>
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
     
       <div class="container-fluid">
             <div class="row">
                  <div class="col-4" style="background-color:red;height:650px;width:200px;text-align:center; font-family: Lucida Console, Courier New, monospace;">
                    
                           <img alt=".." src="../images/profile.png" height="100px">
                           <h5>${model_user.getName()}</h5>
                      
                  </div>
                  <div class="col-8" style="text-align:center">
                     <form:form action="updateUserProfileForm" method="post" modelAttribute="modelFoodAtt" >
        
                       <div>
							<label class="form-label name_design1" >User Name</label> 
							<form:input  path="name" cssClass="form-control box" value="${model_user.getName()}" />
							<form:errors path="name" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1" >User Email</label> 
							<form:input  path="email" cssClass="form-control box" value="${model_user.getEmail()}" readonly="true"/>
							<form:errors path="email" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">User PhoneNo</label> 
							<form:input  path="phoneno" cssClass="form-control box" value="${model_user.getPhoneno()}"/>
							<form:errors path="phoneno" cssClass="error_message_design" />
						</div>
						
						<div>
							<label class="form-label name_design1">User Password</label>
							 <form:input  path="password" cssClass="form-control box"  value="${model_user.getPassword()}"/>
							 <form:errors path="password" cssClass="error_message_design" />
						</div>
						
                       
                             <div class="col-4" style="text-align:center;">
                                  <input  type="submit" value="Update" class="btn btn-primary box"/>
                             </div>
                             
                            
		         </form:form>
                          
                  
                  </div>
             </div>
       </div>
</body>
</html>