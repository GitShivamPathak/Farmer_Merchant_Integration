<%-- 
    Document   : changepassword
    Created on : 18-Sept-2023, 12:15:01 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
if(session.getAttribute("adminid")==null){
    
response.sendRedirect("../login.jsp");

    }
    else{
%>
<html>
    <head>
        <meta http-equip="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.bundle.js"></script>
        <script>
            function validate(){
                var op=document.getElementById("oldpassword");
                var np=document.getElementById("newpassword");
                var cp=document.getElementById("confirmpassword");
                
                if(op.value==""|| op.value=null)
                {
                    alert("Please Enter Old Password!");
                    op.focus();
                    
                }
                else if(np.value=""||np.value=null)
                {
                    alert("Please Enter new Password!");
                    np.focus();
                    
                }
                else if(cp.value=""||np.value=null)
                {
                    alert("Please Confirm Pssword!");
                    np.focus(); 
                }
                else{
                    document.getElementById("formchangepassword").submit();
                }
                
            }
            </script>
            </head>
            <body>
        <div class="container-fluid">
            <div class="row">
                <nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong" style="background-color: black;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"><h2 style="color:#39a2db;font-family: 'Russo One';">Farmer Merchant Integration</h2></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="index.jsp" style="color:white;">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.jsp" style="color:white;">Enquiries</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.jsp" style="color:white;">Booking</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.jsp" style="color:white;">Closing</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"  style="color:white;">
                                        Admin
                                    </a>
                                    <ul class="dropdown-menu">
                                       
                                        <li><a class="dropdown-item" href="logout.jsp">Log out</a></li>
                                    </ul>
                                </li>                            
                            </ul>
                            <form class="d-flex" role="search">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-light" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="row mt-2">
                <div class="col-sm-4" style="height: 600px; background-color: black; overflow: scroll;">
                    <div class="tagembed-container" style=" width:100%;height:100%;overflow: auto;">
                        <div class="tagembed-socialwall" data-wall-id="117427" view-url="https://widget.tagembed.com/117427">  </div> <script src="//widget.tagembed.com/embed.min.js" type="text/javascript"></script>
                    </div>
            </div>
                <div class="col-sm-8" style="min-height: 600px;background-color: aliceblue;">
                    <h2 style="text-align: center; color:danger;">Change Password</h2>
                    <form id="formchangepassword" onsubmit="validate();event.preventDefault();" class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="changepassword"/>
                        <table class="table table-bordered" style="width:60%; margin: auto;">
                            <tr>
                                <td>Enter old password : </td>
                                <td><input type="password" name="oldpassword" class="form-control" id="oldpassword"/></td>
                            </tr>
                            <tr>
                                <td>Enter new password : </td>
                                <td><input type="password" name="newpassword" class="form-control" id="newpassword"/></td>
                            </tr>
                            <tr>
                                <td>Confirm password : </td>
                                <td><input type="password" name="confirmpassword" class="form-control" id="confirmnewpassword"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><button type="submit" class="btn btn-success">Change</button></td>
                            </tr>
                        </table>
                    </form>
                </div>

                <div class="row">
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white;">
                        <h6 style="margin: 20px auto 10px 30px;">Quick Links</h6>
                        <ul  style="margin: 10px auto 10px 0px; list-style-type: none; ">
                            <li><a style="text-decoration: none; color:white;" href="index.jsp">Home</a></li>
                            <li><a style="text-decoration: none; color:white;" href="#">About</a></li>
                            <li><a style="text-decoration: none; color:white;" href="register.jsp">Register</a></li>
                            <li><a style="text-decoration: none; color:white;" href="contactus.jsp">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white;">
                        <div>
                            <h6 style="margin: 20px auto 10px 10px;">Need help ?</h6>
                            <h6 style="margin: 10px auto 10px 10px;">Call us:<br/>+91 7007761158</h6>
                            <h6 style="margin: 10px auto 10px 10px;">General Enquires :<br/>pathaks668@gmail.com</h6>
                            <h6 style="margin: 40px auto 5px auto;" align="center">All rights reserved ©</h6>
                            </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white">
                        <div>
                            <h6 style="margin: 20px auto 10px 10px;">Get regular updates of cold storages.</h6>
                            <form class="row g-3">
                                <div class="col" style="margin: 20px auto 10px 10px;">
                                    <input type="email" class="form-control" placeholder="xyz@gmail.com">
                                </div>
                                <div class="col" style="margin: 20px auto 10px 10px;">
                                    <button type="submit" class="btn btn-primary">Send</button>
                                </div>
                            </form>
                            <h6 style="margin: 20px auto 10px 10px;">Connect with us:</h6>
                            <ul style="list-style-type: none; display:inline;">
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-facebook-f fa-s" style="color: white;"></i></li>
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-instagram fa-s" style="color: white;"></i></li>
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-linkedin-in fa-s" style="color: white;"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
<%}%>