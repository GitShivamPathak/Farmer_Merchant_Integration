<%-- 
    Document   : enquiry
    Created on : 12-Sept-2023, 10:01:03 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet"/><!-- comment -->
        <script src="js/bootstrap.bundle.js"> </script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row">
                
            <div class="col-sm-4" style="min-height:600px; background-color:lightcoral;"><img src="images/contact.gif"  style="width:500px;height:600px;"></div> 
        <div class="col-sm-8" style="min-height:600px; background-color:aliceblue;">
        <h2 style="text-align: center;color:danger;">Enquiry Form</h2>
        <form class ="form-group" method="post" action="controller.jsp">
            <input type="hidden" name="page" value="contactus" />
            <table class="table" style="width:80%;margin: auto;">
                <tr>
                    <td>Enter name</td>  
                    <td><input type="text" name="name" class="form-control"></td>  
                </tr>
                <tr>
                    <td>Select gender</td>
                    <td><input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                    </td>
                </tr>
                <tr>
                    <td>Enter address</td>
                    <td>
                        <textarea name="address" class="form-control"></textarea>                    </td>
                </tr>
                <tr>
                    <td>Enter Contact no</td>
                    <td>
                        <input type="number" class="form-control"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>Enter Email Address</td>
                    <td>
                        <input type="text" name="emailaddress" class="form-control"/>
                       
                    </td>
                </tr>
                <tr>
                    <td>Enter Enquiry Text</td>
                    <td>
                        <textarea name="enquirytext" class="form-control"></textarea>
                       
                    </td>
                </tr>
                <tr>
                    <td> </td>
                    <td>
                        <button type="submit" class="btn btn-success">SUBMIT</button>
                       
                    </td>
                </tr>
            </table>
        </form>
        </div>
            </div>
            <div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>>
    </body>
</html>
