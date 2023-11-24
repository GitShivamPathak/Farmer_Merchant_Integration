<%-- 
    Document   : view
    Created on : Sep 20, 2023, 10:02:12 AM
    Author     : Tanmay
--%>
<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <title>View</title>
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div style="min-height:40vw;">

                <%
                    dbManager dm = new dbManager();
                    String ano = request.getParameter("ano");
                    String query = "select * from booking where aadharno='" + ano + "'";
                    ResultSet rs = dm.select(query);

                    if (rs.next()) {
                %>
                <h2 style="color:#73bf44;margin-top:2vw;" align="center">Booking Details of <%=rs.getString("name")%> </h2>
                <table class="table table-bordered" style="width:60%;margin:auto auto 4vw auto;">
                    <tr>
                        <td>Registration ID</td>
                        <td><%=rs.getString("regid")%></td>
                    </tr>
                    <tr>
                        <td>Farmer Name</td>
                        <td><%=rs.getString("name")%></td>
                    </tr>
                    <tr>
                        <td>Village</td>
                        <td><%=rs.getString("village")%></td>
                    </tr>
                    <tr>
                        <td>Post</td>
                        <td><%=rs.getString("post")%></td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td><%=rs.getString("district")%></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><%=rs.getString("state")%></td>
                    </tr>
                    <tr>
                        <td>Pin Code</td>
                        <td><%=rs.getString("pincode")%></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td><%=rs.getString("contactno")%></td>
                    </tr>
                     <tr>
                        <td>Aadhar No</td>
                        <td><%=rs.getString("aadharno")%></td>
                    </tr>
                     <tr>
                        <td>Number of packets</td>
                        <td><%=rs.getString("noofpacket")%></td>
                    </tr>
                     <tr>
                        <td>Duration</td>
                        <td><%=rs.getString("duration")%> months</td>
                    </tr>
                    <tr>
                        <td>Rate</td>
                        <td>Rs. <%=rs.getString("rate")%></td>
                    </tr>
                    <tr>
                        <td>Total Amount</td>
                        <td>Rs. <%=rs.getString("totalamt")%></td>
                    </tr>
                    <tr>
                        <td>Advance Amount</td>
                        <td>Rs. <%=rs.getString("advanceamt")%></td>
                    </tr>
                     <tr>
                        <td>Rest Amount</td>
                        <td>Rs. <%=rs.getString("restamt")%></td>
                    </tr>
                     <tr>
                        <td>Booking Date</td>
                        <td><%=rs.getString("bookingdate")%></td>
                    </tr>
                </table>
                <%} else {
                %>
                <h2 style="color:Red;">Booking is not available</h2>
                <%}

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