<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>courses</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <!-- swiper css link  -->
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->

<header class="header">

   <a href="#" class="logo"> <i class="fas fa-lightbulb"></i> CAREER MAKERS </a>

   <nav class="navbar">
      <div id="close-navbar" class="fas fa-times"></div>
      <a href="userhome.php">home</a>
      <a href="about.html">about</a>
      <a href="courses.php">courses</a>
      <a href="contact.html">contact</a>
   </nav>

   <div class="icons">
      <div id="account-btn" class="fas fa-user"></div>
      <div id="menu-btn" class="fas fa-bars"></div>
   </div>

</header>

<!-- account form section starts  -->
<div class="account-form">

   <div id="close-form" class="fas fa-times"></div>

   <div class="buttons">
      <span class="btn active login-btn">login</span>
      <span class="btn register-btn">register</span><br>
      <br>
      <span class = "btn login-admin-btn">Login as Admin</span>
   </div>

   <form name="myform" class="login-form active" onsubmit="return validate()">
      <h3>login now</h3>
      <input type="email" name = "email"placeholder="enter your email" class="box">
      <input type="password" name = "password" placeholder="enter your password" class="box">
      <div class="flex">
         <input type="checkbox" name="" id="remember-me">
         <label for="remember-me">remember me</label>
         <a href="#">forgot password?</a>
      </div>
      <button type="submit" class="btn" id = "login" name="register_btn"><a href = "./home.html">Login</a></button>

   </form>

   <form name="myform" id = "login1"class="register-form" onsubmit="return validate()" method="post">
      <h3>register now</h3>
      <input type="email" name = "email"placeholder="enter your email" class="box">
      <input type="password" name = "password"placeholder="enter your password" class="box">
      <input type="password" placeholder="confirm your password" class="box">
      <input type="submit" value="register now" class="btn">
      <!-- <button type="submit" class="btn" id = "login" name="register_btn"><a href = "./User/userhome.html">Register</a></button> -->

   </form>

   <form name="myform" class = "login-admin-form" action="" onsubmit="return validate()">
      <h3>login now</h3>
      <input type="email" name = "email" id = "email_id" placeholder="enter your email" class="box">
      <input type="password" name = "password" id = "pwd" placeholder="enter your password" class="box">
      <div class="flex">
         <input type="checkbox" name="" id="remember-me">
         <label for="remember-me">remember me</label>
         <a href="#">forgot password?</a>
      </div>
      <button type="submit" class="btn" id = "butn"  name="register_btn"><a href = "#" onclick='compare()'>Login as admin</a></button>
   </form>


   <script>
      function validate(){  
         let x = document.getElementById('login1');
         let name = x.email.value;
//  var name=document.forms["myform"]["email"].value;  
    var password=document.myform.password.value;  
         
   if (name==null || name==""){  
 alert("Email id can't be blank"); 
 return false;  
}else if(password.length<6){  
 alert("Password must be at least 6 characters long.");  
 return false;  
 }  
} 
   </script>
  

</div>

<!-- account form section ends -->

<!-- header section ends -->

<section class="heading-link">
   <h3>courses after 12th </h3>
   <p> <a href="userhome.php">home</a> / courses </p>
</section>

<section class="courses">

   <h1 class="heading"> few evergreen courses </h1>

   <div class="box-container">

      <div class="box">
         <div class="image">
            <img src="images/course-2-2.jpg" alt="">
            <h3>engineering</h3>
         </div>
         <div class="content">
            <h3>choose what's best for you!</h3>
            <p>The Skills they gained throughout this course pave a good scope for their future.</p>
            <a href="../User/engineeringcolleges.php" class="btn">read more</a>
            <div class="icons">
               
            </div>
         </div>
      </div>


      <div class="box">
         <div class="image">
            <img src="images/course-2-4.jpg" alt="">
            <h3>medical</h3>
         </div>
         <div class="content">
            <h3>choose what's best for you!</h3>
            <p>When we talk about Medical, an image of MBBS rises in our mind.</p>
            <a href="../User/medicalcolleges.php" class="btn">read more</a>
            <div class="icons">
              
            </div>
         </div>
      </div>

      
      <div class="box">
         <div class="image">
            <img src="images/course-2-6.jpg" alt="">
            <h3>law</h3>
         </div>
         <div class="content">
            <h3>choose what's best for you!</h3>
            <p>A career in law requires one to put in overtime grind spent in legal research. </p>
            <a href="../User/lawcolleges.php" class="btn">read more</a>
            <div class="icons">
               
            </div>
         </div>
      </div>



     
   </div>

   <div class="load-more"> <div class="btn">load more</div> </div>

</section>

<!-- footer section starts  -->

<section class="footer">

   <div class="box-container">

      <div class="box">
         <h3> <i class="fas fa-lightbulb"></i> career makers </h3>
         <p>build your future with us!!!</p>
         <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
      </div>

      <div class="box">
         <h3>quick links</h3>
         <a href="userhome.html" class="link">home</a>
         <a href="about.html" class="link">about</a>
         <a href="courses.html" class="link">courses</a>
         <a href="contact.html" class="link">contact</a>
      </div>

      <!-- <div class="box">
         <h3>useful links</h3>
         <a href="#" class="link">help center</a>
         <a href="#" class="link">ask questions</a>
         <a href="#" class="link">send feedback</a>
         <a href="#" class="link">private policy</a>
         <a href="#" class="link">terms of use</a>
      </div> -->

      <div class="box">
         <h3>newsletter</h3>
         <p>subscribe for latest upadates</p>
         <form action="">
            <input type="email" name="" placeholder="enter your email" id="" class="email">
            <input type="submit" value="subscribe" class="btn">
         </form>
      </div>

   </div>

   
</section>

<!-- footer section ends -->






<!-- swiper js link  -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="login.js"></script>

</body>
</html>