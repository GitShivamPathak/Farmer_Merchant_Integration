<%-- 
    Document   : payment
    Created on : Sep 20, 2023, 9:43:30 PM
    Author     : Tanmay
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin home
        </title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>

            <div class="container-fluid" style="min-height: 40vw;">
                <h2 style="color:#73bf44;" align="center">Do Payment</h2>
                <%
                   dbManager dm=new dbManager();
                   String ano=request.getParameter("ano");
                   String query="select*from booking where aadharno='"+ano+"'";
                   ResultSet rs=dm.select(query);
                   if(rs.next())
                   {
                %>  
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="payment"/>
                    
                    <table class="table table-bordered" style="width:">
                        <tr>
                            <td>Aadhar No</td>
                            <td> <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/></td>
                        </tr>
                         <tr>
                            <td>Total Amount</td>
                            <td> <input type="number" name="totalamt" value="<%=rs.getString("totalamt")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Rest Amount</td>
                            <td> <input type="number" name="restamt" value="<%=rs.getString("restamt")%>" class="form-control" readonly/></td>
                        </tr>
                         <tr>
                            <td>Pay Amount</td>
                            <td> <input type="number" name="payamt"  class="form-control"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="SUBMIT" class="btn-success">PAY</button>>
                            </td>
                        </tr>
                    </table>
                </form>
                    
            </div>

            <!-- footer -->

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
                        <h6 style="margin: 10px auto 10px 10px;">Call us:<br/>+91 7307770481</h6>
                        <h6 style="margin: 10px auto 10px 10px;">General Enquires :<br/>tanmaygangwar7@gmail.com</h6>
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