<%@page  import="dbpack.dbManager"
         import="java.sql.ResultSet"
         import="Connect.SmsSender" %>
<%    
    if(request.getParameter("page").equals("contactus"))
    {
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    
dbManager dm=new dbManager();
String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"',curdate())";
boolean res=dm.InsertUpdateDelete(query);
if(res==true)
{
SmsSender ss=new SmsSender();
ss.sendSms(contactno);
out.print("<script>alert('Enquiry is submitted '); window.location.assign('contactus.jsp');</script>");
}
else
{
out.print("<script>alert('Enquiry is not submitted '); window.location.assign('contactus.jsp');</script>");
}
}

else if(request.getParameter("page").equals("login"))
{
String userid=request.getParameter("username");
String password=request.getParameter("password");
dbManager dm=new dbManager();
String query="select * from login where userid='"+userid+"' and password='"+password+"'";
ResultSet rs=dm.select(query);
if(rs.next())
{
session.setAttribute("adminid",userid);
response.sendRedirect("adminezone/adminehme.jsp");

}
else{
out.print("<script>alert('Invalid User');window.location.href('login.jsp');</script>");
}
}
%>