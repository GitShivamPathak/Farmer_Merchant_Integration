<%-- 
    Document   : booking
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div style="min-height:40vw;">
                <h2 style="color:#73bf44;margin-top:2vw;" align="center">List of Farmers</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>Registration id</th>
                        <th>Name</th>
                        <th>Village</th>
                        <th>Post</th>
                        <th>District</th>
                        <th>State</th>
                        <th>Pincode</th>
                        <th>Contact No</th>
                        <th>Aadhar No</th>
                        <th>Book</th>
                        <th>View</th>
                    </tr>
                    <%
                        dbManager dm =new dbManager();
                        String query = "select * from farmainfo";
                        ResultSet rs = dm.select(query);
                        while(rs.next())
                        {%>
                        <tr>
                            <td><%= rs.getString("regid")%></td>
                            <td><%= rs.getString("name")%></td>
                            <td><%= rs.getString("village")%></td>
                            <td><%= rs.getString("post")%></td>
                            <td><%= rs.getString("district")%></td>
                            <td><%= rs.getString("state")%></td>
                            <td><%= rs.getString("pincode")%></td>
                            <td><%= rs.getString("contactno")%></td>
                            <td><%= rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-outline-success">Book</button>
                                </a>
                            </td>
                            <td>
                                <a href="view.jsp?ano=<%=rs.getString("aadharno")%>"><button class="btn btn-outline-primary">View</button></a>
                            </td>
                        </tr>
                        <%}
                        %>
                </table>
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