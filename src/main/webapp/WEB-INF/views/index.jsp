<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap 5 CDN links-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!--custom css link-->
    <link rel="stylesheet" href="css/style.css"/>
   
    <title>Food Circles</title>
    <!--favicon link-->
    <link rel="icon" type="image/png" href="images/favicon.png">

    <!--Remix Icon Link-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">
</head>
<body>
    
     <jsp:include page="headerHome.jsp"></jsp:include> 
    
    <div class="container-fluid" style="padding: 0px;">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/food1.jpg" class="d-block w-100 food_design" alt="food1">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Affordable Delecious Meals</h5>
                  <p>“Welcome to our kitchen! We’re passionate about creating delicious meals that bring people together.”</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/food3.jpg" class="d-block w-100 food_design" alt="food2">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Heaven For Your Food Cravings</h5>
                  <p>“Discover the flavors of our world. From classic dishes to modern twists, we’ve got something for everyone.”</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/food2.jpg" class="d-block w-100 food_design" alt="food3">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Get Deliever At Your Home</h5>
                  <p>“Fresh ingredients, bold flavors. That’s what we’re all about.”</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>

    </div>

    <div class="container-fluid about_img_design mt-5" style=" background-image: url('images/about_background.jpeg');">
        <div>
            <h2 style="text-align: center; color: black;">About Us</h2>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="card" style="width: 18rem; margin-top:10px;">
                    <img src="images/about1.jpg" class="card-img-top"  alt="delievery">
                    <div class="card-body">
                      <p class="card-text">“Get your favorite meals delivered right to your doorstep with our home delivery service!”
                          We are providing you reliable and safe delievery service right at your doorset.
                      </p>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 25rem; margin-top:10px; height:28rem">
                    <img src="images/about2.jpg" class="card-img-top"  alt="delievery">
                    <div class="card-body">
                      <p class="card-text">“Welcome to Food Circle, the no.1 delivery food brand in India. We pride ourselves on offering the fastest delivery times and the widest selection of food options. Our customers love us for our delicious food and reliable service.  We’re committed to making your experience with us as easy and enjoyable as possible. Order now!”
                      </p>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem; margin-top:10px; float: right;">
                    <img src="images/about3.jpg" class="card-img-top"  alt="delievery">
                    <div class="card-body">
                      <p class="card-text">“Welcome to Food Circle, where you can enjoy delicious food without breaking the bank. Our dishes are made with fresh ingredients and prepared with care to ensure maximum flavor. We believe that everyone should be able to enjoy great food at an affordable price.
                      </p>
                    </div>
                </div>
            </div>
        </div>
       
    </div>

    <div >


    </div>    

    <div class="container-fluid mt-5 counter">
           <div class="row">
                  <div class="col-4"><h3>
                    Happy Costumers
                    <br><br><span id="count1"></span>+
                  </h3></div>
                  <div class="col-4"><h3>
                    Varities In Dishes
                    <br><br><span id="count2"></span>+
                  </h3></div>
                  <div class="col-4"><h3>
                    Five Star Ratings
                    <br><br><span id="count3"></span>+
                  </h3></div>
           </div>

    </div> 


    <footer  class="container-fluid mt-2 footer_design">
            <div class="row">
                <div class="col-3">
                    <h2>COMPANY INFO</h2>
                    <p style="color:azure; text-align: center;"> We are believing in a strong community with tasy food and trustyworthy people.Lets join us in our journey.</p>
                    <p style="color:azure; text-align: center;"> Make It possible to provide yummy kitchen food to every doorset.</p></p>
                                                                  
                </div>
                <div class="col-3 product_design" >
                    <h2>PRODUCTS</h2>
                    <h6>Non-veg Food</h6>
                    <h6>Veg Food</h6>
                    <h6>Indian Food</h6>
                    <h6>Italian Food</h6>
                    <h6>Maxican Food</h6>
                    <h6>Korean Food</h6>
                </div>
                <div class="col-3 product_design">
                    <h2>USEFUL LINKS</h2>
                   
                    <h6>Your Account</h6>
                    <h6>Become an Affiliates</h6>
                    <h6>Shipping Rates</h6>
                    <h6>Discounts</h6>
                    <h6>Help</h6>
                   
                </div>
                <div class="col-3 product_design">
                    <h2>CONTACT</h2>
                    <h6><i class="ri-home-3-fill"></i>  India,New Delhi,Sector-366</h6><br>
                    <h6><i class="ri-mail-fill"></i>  foodCirclesOfficial@gmail.com</h6><br>
                    <h6><i class="ri-phone-fill"></i>  +91 2334-5677-09</h6>
                </div>
            </div>
            <div class="row">
                  <div class="col-3"  style="color:azure;"><i class="ri-google-play-fill"></i><h7> Google Playstore</h7></div>
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
     
     document.addEventListener("DOMContentLoaded",()=>{
           
        function counter(id,start,end,duration){
            let obj=document.getElementById(id),
            current=start,
            range=end-start,
            increment=end>start?1:-1,
            step=Math.abs(Math.floor(duration/range)),
            timer=setInterval(()=>{
                current+=increment;
                obj.textContent=current;
                if(current==end){
                    clearInterval(timer);
                }
            },step);
        }
        counter("count1",0,1287,3000);
        counter("count2",100,1786,3000);
        counter("count3",0,1440,3000);
        
     })

   </script>
</body>
</html>