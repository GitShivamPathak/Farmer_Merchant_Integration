<%@page import="dbpack.dbManager"%>

<%
    
String id=request.getParameter("id");
dbManager dm=new dbManager();
String query ="delete from news where id ='"+id+"'";
if(dm.InsertUpdateDelete(query)==true)
{
out.print("<script>alert('News is Deleted');window.location.assign('news.jsp');</script>");
}
else{
out.print("<script>alert('News not Deleted');window.location.assign('news.jsp');</script>");
}
%>