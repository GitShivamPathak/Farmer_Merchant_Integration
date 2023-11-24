<%-- 
    Document   : news
    Created on : Sep 18, 2023, 12:14:02 PM
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
        <title>Admin home
         </title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
             <jsp:include page="header.jsp"/>

            <div class="row">
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 style="color:blue;text-align: center;">Add news and events</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        
                        <table class="table table-bordered" style="width:70%;margin:auto;">
                            <tr>
                                <td>
                                    Enter news
                                </td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><button type="submit" class="btn btn-success">Add</button></td>
                            </tr>
                        </table>
                    </form>
                    <br>
                    <h2 style=color:blue; text-align:center;>News Management</h2>
                        <table class="table table-bordered" style="width:80%;margin:auto";>
                               <tr> 
                               <th>ID</th>
                               <th>News Text</th>
                               <th>Posted date</th>
                               <th>Delete</th>
                               </tr>
                               <%
                                   dbManager dm=new dbManager();
                                   ResultSet rs=dm.select("select * from news");
                                   while(rs.next())
                                   {
                                       %> 
                                       
                                       <tr><td><%=rs.getInt("id")%></td>
                                               <td><%=rs.getString("newstext")%></td>
                                               <td><%=rs.getString("posteddate")%></td>
                                               <td>
                                                   <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                                       <button class="btn btn-danger" >Delete</button>
                                                       
                                                   </a>
                                                   
                                               </td>
                                               </tr>
                            <%   }%>
                                  
                                       </table>
                </div>
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