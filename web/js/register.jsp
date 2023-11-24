<%-- 
    Document   : register
    Created on : Sep 13, 2023, 10:57:17 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="js/bootstrap.bundle.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-3" style="min-height: 600px; background-color: black;">
                    <div class="tagembed-container" style=" width:100%;height:100%;overflow: auto;">
                       <div class="tagembed-socialwall" data-wall-id="117427" view-url="https://widget.tagembed.com/117427">  </div> <script src="//widget.tagembed.com/embed.min.js" type="text/javascript"></script>
                   </div>
                </div>
                <div class="col-sm-9" style="min-height: 600px;background-color: aliceblue;">
                    <h2 style="text-align: center; color:blue;margin-top: 10px;">Farmer Registration</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="registration"/>
                        <table class="table" style="width:80%;margin:auto;">
                            <tr>
                                <td>
                                    Enter Name : 
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="name" />
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    Enter Father's Name : 
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="fname" />
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    Enter Mother's Name : 
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="mname" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Gender : 
                                </td>
                                <td>
                                    <input type="radio" class="form-check-control" name="gender" value="male" />Male
                                    <input type="radio" class="form-check-control" name="gender" value="female" />Female
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address :
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="village" placeholder="Village" style="margin-bottom: 5px;"/>
                                    <input type="text" class="form-control" name="post" placeholder="Post" style="margin-bottom: 5px;"/>
                                    <input type="text" class="form-control" name="district" placeholder="District" style="margin-bottom: 5px;"/>
                                    <input type="text" class="form-control" name="state" placeholder="State" style="margin-bottom: 5px;"/>
                                    <input type="number" class="form-control" name="pin" placeholder="PIN code" style="margin-bottom: 5px;"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter mobile no : </td>
                                <td>
                                    <input type="number" class="form-control" name="contactno"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter aadhar no : </td>
                                <td>
                                    <input type="number" class="form-control" name="aadharno"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter PAN no : </td>
                                <td>
                                    <input type="text" class="form-control" name="panno"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>