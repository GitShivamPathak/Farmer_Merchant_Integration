<%-- 
    Document   : closing
    Created on : Sep 20, 2023, 9:08:11 PM
    Author     : Tanmay
--%>

<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Booking
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
                <h2 align="center" style="color: #73bf44;margin:1vw auto 1vw auto;">Manage Booking</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>Reg. ID</th>
                        <th>Name</th>
                        <th>Aadhar No</th>
                        <th>No of Packets</th>
                        <th>Duration</th>
                        <th>Rate</th>
                        <th>Total Amount</th>
                        <th>Advance Amount</th>
                        <th>Rest Amount</th>
                        <th>Pay</th>
                    </tr>
                    <%
                        dbManager dm = new dbManager();
                        ResultSet rs = dm.select("select * from booking");
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td><%=rs.getString("noofpacket")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><%=rs.getString("rate")%></td>
                            <td><%=rs.getString("totalamt")%></td>
                            <td><%=rs.getString("advanceamt")%></td>
                            <td><%=rs.getString("restamt")%></td>
                            <td>
                                <a href="payment.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-outline-success">Pay</button>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                </table>
            </div>

        <!-- footer --><div class="row">
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