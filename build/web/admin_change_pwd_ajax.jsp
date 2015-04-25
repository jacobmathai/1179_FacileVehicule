<%-- 
    Document   : admin_change_pwd_ajax
    Created on : Jan 18, 2015, 11:39:23 PM
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

                                String ses= session.getAttribute("admin").toString();
                                 String pass=request.getParameter("idno");
                                 String sel2="select * from tb_admin where ad_id='"+ses+"' and ad_pwd='"+pass+"'";
                                    ResultSet rsPlace=obj.select(sel2);
                                    if(rsPlace.next())
                                        {
                                     out.println("valid password");
                                        }
                                    else
                                        {
                                        out.println("invalid password");
                                        }


%>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>
