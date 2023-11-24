<%-- 
    Document   : enquiry
    Created on : Sep 18, 2023, 10:13:16 AM
    Author     : Tanmay
--%>


<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Admin home</title>
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

            <div class="row">
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 style="text-align: center; color:blue;">Enquiry Management</h2>
                    <table class="table table-bordered" style="width:90% ; margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>E-mail</th>
                            <th>Enquiry Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                           dbManager dm = new dbManager();
                           String query = "select * from enquiry";
                           ResultSet rs = dm.select(query);
                           while(rs.next())
                           {
                            %>
                            <tr>
                                <td><%=rs.getInt("id")%></td>
                                <td><%=rs.getString("name")%></td>
                                <td><%=rs.getString("gender")%></td>
                                <td><%=rs.getString("address")%></td>
                                <td><%=rs.getString("contactno")%></td>
                                <td><%=rs.getString("emailaddress")%></td>
                                <td><%=rs.getString("enquirytext")%></td>
                                <td><%=rs.getString("enquirydate")%></td>
                                <td>
                                    <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                        <button class="btn btn-danger">Delete</button>
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                    </table>
                </div>
            </div><!-- footer -->
            
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