<%-- 
    Document   : delete
    Created on : Sep 18, 2023, 11:25:35 AM
    Author     : Tanmay
--%>

<%@page import="dbpack.dbManager"%>
<%
  String id = request.getParameter("id");
  dbManager dm = new dbManager();  
  String query = "delete from enquiry where id='"+id+"'";
  if(dm.InsertUpdateDelete(query)==true)
  {
    out.print("<script>alert('Enquiry deleted !');window,location.href='enquiry.jsp'</script>");
    }
    else
    {
    out.print("<script>alert('Enquiry not deleted !');window,location.href='enquiry.jsp'</script>");
    
        }
    %>