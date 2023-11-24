<%-- 
    Document   : book
    Created on : Sep 20, 2023, 11:02:00 AM
    Author     : Tanmay
--%>

<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <title>Booking</title>
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div style="min-height:40vw;">
                <h2 align="center" style="color:#73bf44;">Booking Form</h2>
                <%
                    String aadharno = session.getAttribute("ano").toString();
                    dbManager dm = new dbManager();
                    String query = "select * from farmerinfo where aadharno='"+aadharno+"'";
                    ResultSet rs = dm.select(query);
                    if(rs.next())
                    {
                    %>
                    
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="book"/>
                        <table class="table table-bordered" style="width:80%;margin:auto;">
                            <tr>
                                <td>Registration id</td>
                                <td><input type="text" name="regid" value="<%=rs.getString("regid")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td><input type="text" name="name" value="<%=rs.getString("name")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>Village</td>
                                <td><input type="text" name="village" value="<%=rs.getString("village")%>" class="form-control" readonly/></td>
                            </tr>
                             <tr>
                                <td>Post</td>
                                <td><input type="text" name="post" value="<%=rs.getString("post")%>" class="form-control" readonly/></td>
                            </tr>
                             <tr>
                                <td>District</td>
                                <td><input type="text" name="district" value="<%=rs.getString("district")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td><input type="text" name="state" value="<%=rs.getString("state")%>" class="form-control" readonly/></td>
                            </tr>
                             <tr>
                                <td>Pincode</td>
                                <td><input type="text" name="pincode" value="<%=rs.getString("pincode")%>" class="form-control" readonly/></td>
                            </tr>
                             <tr>
                                <td>Contact No</td>
                                <td><input type="text" name="contactno" value="<%=rs.getString("contactno")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>Aadhar No</td>
                                <td><input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/></td>
                                </tr>
                            <tr>
                                <td>No. of packets</td>
                                <td><input type="number" name="noofpacket"  class="form-control" required/></td>
                            </tr>
                            <tr>
                                <td>Duration (in months)</td>
                                <td><input type="number" name="duration" class="form-control" required/></td>
                            </tr>
                            <tr>
                                <td>Rate(per month per packet)</td>
                                <td><input type="number" name="rate" class="form-control" required/></td>
                            </tr>
                            <tr>
                                <td>Advance Amount</td>
                                <td><input type="text" name="advanceamt" class="form-control" required/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><button type="submit" class="btn btn-success">Submit</button></td>
                            </tr>
                        </table>
                    </form>
                    
                    <%
                    }
                %>
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