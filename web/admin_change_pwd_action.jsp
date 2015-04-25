<%-- 
    Document   : admin_change_pwd_action
    Created on : Jan 18, 2015, 11:38:17 PM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="conn.connection"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String s=session.getAttribute("admin").toString();
         String current_pass=request.getParameter("txtpassword");
         String newpass=request.getParameter("txtpwd");
         String cpass=request.getParameter("txtpword");
         System.out.println(newpass+"*****"+cpass+"****Current"+current_pass);
         String sel="select * from tb_admin where ad_id='"+s+"' and ad_pwd='"+current_pass+"'";
         ResultSet rs=obj.select(sel);
         System.out.println(sel);

         boolean flag=false;

          if(newpass.matches(cpass))
             {

         while(rs.next())
             {

             flag=true;
             }
         if(flag==true)
             {
         String up="update tb_admin set ad_pwd='"+newpass+"' where ad_id='"+s+"'";
         boolean bb=obj.insert(up);
         if(bb==true)
             {
              response.sendRedirect("adminchangepwd.jsp?pp=true");
             System.out.println(up);
             }
         else
             {
             response.sendRedirect("adminchangepwd.jsp?qq=false");
              System.out.println(up);
         }
         }
         else
             {
             response.sendRedirect("adminchangepwd.jsp?qq=false");
             }
         }
         else
             {
             response.sendRedirect("adminchangepwd.jsp?qq=false");
             }
       %>
    </body>
    <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>
