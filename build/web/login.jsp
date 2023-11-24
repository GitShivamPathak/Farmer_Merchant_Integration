<%-- 
    Document   : index
    Created on : 09-Sept-2023, 9:55:30 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet"/><!-- comment -->
        <script src="js/bootstrap.bundle.js"> </script>
    </head>
    <body style="background-color:grey;">
       
            <div class="menu mt-2">
                <nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark" data-bs-theme="dark" >
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="enquiry.jsp">Contact Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
            </div>
            <div class="row mt-2">
                <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/img1.jpg" class="d-block w-100" alt="..." style="height:450px;">
    </div>
    <div class="carousel-item">
      <img src="images/images.jpeg" class="d-block w-100" alt="..." style="height:450px;">
    </div>
    <div class="carousel-item">
      <img src="images/slider_4.jpg" class="d-block w-100" alt="..." style="height:450px;">
    </div>
       <div class="carousel-item">
      <img src="images/slider_5.jpg" class="d-block w-100" alt="..." style="height:450px;">
    </div>
       <div class="carousel-item">
      <img src="images/slider_3.png" class="d-block w-100" alt="..." style="height:450px;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
            </div>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px; background-color: aqua;"><video><source src="images/admin.mp4" type="video/mp4"  style="width:500px;height:600px;"></video>></div>
                <div class="col-sm-8"style="min-height: 600px; background-color: aliceblue;">  
                     <h2 style="text-align: center; color:danger;">Admin Login</h2> 
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="login"/>
            <table class="table table-bordered" style="width:60%; margin: auto;"> 
                
                <tr>
                    <td>Enter Username</td>
                   
                <td><input type="text" name="username" class="form-control"/></td>
                </tr><!-- comment -->
            <tr> 
                <td>Enter Password</td>
<td><input type="password" name="password" class="form-control"/></td></tr><!-- comment -->
            <tr><td style="width:10%; margin:auto; background-color: black;"><input type="Submit"/></td></tr>
            </table>
        </form></div>
            </div>
            <div class="row mt-2">
               <!-- Footer -->
<footer class="bg-dark text-white">
  <!-- Grid container -->
  <div class="container p-4">
    
    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>Sign up for regular updates</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline form-white mb-4">
              <input type="email" id="form5Example21" class="form-control" placeholder="E-mail address"/>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">
            <!-- Submit button -->
            <button type="submit" class="btn btn-outline-light mb-4">
              Subscribe
            </button>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase" style="color:orangered;">Farmer Merchant Integration</h5>
          <P>Here, you can you can easily make bookings in cold stores with affordable prices and fully secured payment gateway</p>
          
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Need Help ?</h5>
          <h6>Call us:<br/>+91 7007761158</h6>
          <h6>General Enquires:<br/>pathaks668@gmail.com</h6>

        </div>

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Quick Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Home</a>
            </li>
            <li>
              <a href="#!" class="text-white">Register</a>
            </li>
            <li>
              <a href="#!" class="text-white">Login</a>
            </li>
            <li>
              <a href="#!" class="text-white">About us</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2023 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">Farmer Merchant Integration</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
            </div>
        </div>
      
    </body>
</html>

