<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!--favicon link-->
    <link rel="icon" type="image/png" href="images/favicon.png">
     
    <!--custom css link-->
    <link rel="stylesheet" href="css/style4.css"/>
    
    <!-- Checkout Form link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
<title>Place Food Order</title>
 
    <!-- Script Link -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script type="text/javascript">
    
        
      function openFinalPayment(id){
      	  window.location.href='/finalPayment?id='+encodeURIComponent(id);
      }
      
      
       
    </script>
   
</head>
<body>
   <h4 style="text-align:center">Order In Process....</h4>
   <div class="container-fluid" style="height:500px;">
    
     <div class="row" >
          <div class="col-5" style="height:500px;width:600px;">
              <div class="div-design" style="items-align:center">
                        <h5 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:red;text-align:center;margin-top:5px">Below are your Details</h5>
                        <h5 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Name: ${model_user.getName()}</h5>
                        <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Phone No: ${model_user.getPhoneno()}</h6>
                         
                        <h5 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white">Address:</h5>
                        <form action="">
                        
                           <input type="text" placeholder="Enter your address" name="address" class="box"/>
                        </form>
               </div>
          
          
          </div>
          <div class="col-7" style="height:500px;width:600px">
                <div class="div-design1">
                     <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Food Name: ${model_food_item.getFoodname()}</h6>
                     <img src="${model_food_item.getFoodimage()}" height="100"/><br/><br/>
                     <h5 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:red;text-align:center;margin-top:5px">Price Details</h5>
                     <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Total MRP: ${model_food_item.getFoodprice()}</h6>
                     <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Convenience Fees: Rs.99</h6><hr style="color:white"/>
                     <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:white;">Total Amount: ${model_food_item.getFoodprice()+99}</h6>
                     
                     <a class="btn"  style="text-align:center;background-color:red;color:white" onclick="openFinalPayment('${model_food_item.getId()}')"> 
                    			     <i class="ri-arrow-right-circle-fill">Place Order</i>
                     </a>
                </div>
          </div>
     
     </div>
    
    
         
              
             
          
    
    </div>
</body>
</html>