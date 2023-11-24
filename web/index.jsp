<%-- 
    Document   : index
    Created on : 09-Sept-2023, 9:55:30 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title style="color: white;">Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet"/><!-- comment -->
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body style="background-color:	#90EE90;">
        <div class="container-fluid"> 
            <jsp:include page="header.jsp"/>    
            <div class="row mt-2">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/man-519246_1280.jpg" class="d-block w-100" alt="..." style="height:450px;">
                        </div>
                        <div class="carousel-item">
                            <img src="images/images.jpeg" class="d-block w-100" alt="..." style="height:450px;">
                        </div>
                        <div class="carousel-item">
                            <img src="images/slider_2.jpg" class="d-block w-100" alt="..." style="height:450px;">
                        </div>
                        <div class="carousel-item">
                            <img src="images/img1.jpg" class="d-block w-100" alt="..." style="height:450px;">
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

            <div class="row" style="margin-top: 10px;">
                <h2 align="center">Why us ?</h2>
                <div class="col-sm-3" align="center">
                    <img class="rounded-circle" src="images/easy-use.png" alt="Generic placeholder image" width="100px" height="100px" style="border:2px solid black; padding:20px;">
                    <h2>Easy to use</h2>
                </div>
                <div class="col-sm-3" align="center">
                    <img class="rounded-circle" src="images/easy-use.png" alt="Generic placeholder image" width="100px" height="100px" style="border:2px solid black; padding:20px;">
                    <h2>EMI Option is available</h2>
                </div>
                <div class="col-sm-3" align="center">
                    <img class="rounded-circle" src="images/padlock.png" alt="Generic placeholder image" width="100px" height="100px" style="border:2px solid black; padding:20px;">
                    <h2>Secured platform</h2>
                </div>
                <div class="col-sm-3" align="center">
                    <img class="rounded-circle" src="images/price-tag.png" alt="Generic placeholder image" width="100px" height="100px" style="border:2px solid black; padding:20px;">
                    <h2>Affordable prices</h2>
                </div>
            </div>

            <div class="row mt-2">
                
                <h3 align="center" style="color: white;">News</h3>
                <div class="col-sm-4" style="min-height: 600px; background-color: black;">
                    <marquee direction="up" onmouseover="stop()" onmouseout="start()" height=100%"> 
                        <ul style="list-style-type:none;">
                            <% 
                            dbManager dm=new dbManager();
                            ResultSet rs=dm.select("select *from news");
                            while(rs.next())
                            {
                            %>
                            <li style="display:inline; padding: 20px; font-size: 25px; font-style:bold;color:white;">
                                <%=rs.getString("newstext")%></li>

                            <% }
                            %>   
                        </ul> </marquee></div>
                <div class="col-sm-8"style="min-height: 600px; background-color: aliceblue;">

  <div class="card" style="width: 18rem;">
  <img src="images/banana.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Banana</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="https://www.britannica.com/plant/banana-plant-and-fruit" class="btn btn-primary">More About Banana</a>
  </div>
  
  <div class="card" style="width: 18rem;">
  <img src="images/potato.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Potato</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="https://www.britannica.com/plant/potato-plant-and-fruit" class="btn btn-primary">More About Potato</a>
  </div>
</div></div>
            </div>
            
                        <div class="row">
                            <div class="col-sm-7" style="height:400px;"></div>
                            <div class="col-sm-5" style="height:400px;">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.672618129447!2d81.15544337497312!3d26.913883260041118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39995fe6ab9455bf%3A0x9fffe664cfdd0e20!2sCold%20Storage!5e0!3m2!1sen!2sin!4v1695154673314!5m2!1sen!2sin" width="600" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
            <div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>
</html>
