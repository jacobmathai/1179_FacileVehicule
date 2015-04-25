<%-- 
    Document   : homepage_action
    Created on : Jan 18, 2015, 9:36:32 PM
    Author     : Nimitha joy
--%>

<%--
    Document   : patientlogin_action
    Created on : Mar 19, 2014, 10:58:48 PM
    Author     : mypc
--%>

<jsp:useBean class="conn.connection" id="obj"></jsp:useBean>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>doctorloginaction</title>
    </head>
    <body>
        <%
        String name=request.getParameter("txtusername");
        String pass=request.getParameter("txtpassword");
        ResultSet rs=null;
        boolean flag=false;
         String sel="select * from tb_admin where ad_username='"+name+"' and ad_pwd='"+pass+"'";
          rs=obj.select(sel);
          System.out.println(rs);
         while(rs.next())
             {
             flag=true;
             session.setAttribute("admin",rs.getString("ad_id"));
             response.sendRedirect("admin_homepage.jsp?");
             System.out.println(sel);
             }
         if(flag==false)
             {
             response.sendRedirect("homepage.jsp?qq=false");
             System.out.println(sel);
             }
          
          


%>
    </body>
     <br>
    <br>
    <br>
     <%@include file="footer.jsp" %>
</html>

