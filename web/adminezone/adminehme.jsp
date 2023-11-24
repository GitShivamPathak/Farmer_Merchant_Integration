<%-- 
    Document   : adminehme
    Created on : 18-Sept-2023, 12:01:11 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("adminid")==null){
    response.sendRedirect("../login.jsp");
    
    }else{
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <script src="../js/bootstrap.bundle.js"></script>
         <link href="../css/bootstrap.css" rel="stylesheet"/><!-- comment -->
        
    </head>
    <body> 
        <div class="container-fluid">
        
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../images/img1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../images/login.gif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../images/login.gif" class="d-block w-100" alt="...">
    </div>
       <div class="carousel-item">
      <img src="../images/slider_5.jpg" class="d-block w-100" alt="...">
    </div>
       <div class="carousel-item">
      <img src="../images/slider_3.png" class="d-block w-100" alt="...">
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
             <div class="row">
                <div class="col-sm-4" style="min-height: 250px; background-color:black;"></div>
                <div class="col-sm-4" style="min-height: 250px; background-color:navy;"></div>
                <div class="col-sm-4" style="min-height: 250px; background-color:black;"></div>
            </div>
            </body>
            </html>
            <%}%>