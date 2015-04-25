<%-- 
    Document   : place_action
    Created on : Jan 15, 2015, 2:05:54 PM
    Author     : Nimitha joy
--%>

<jsp:useBean class="conn.connection" id="obj"></jsp:useBean>
<%@page import="java.sql.*"%>
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

            String name=request.getParameter("txtdname");
            String pname=request.getParameter("txtpname");
            String lat=request.getParameter("txtlat");
            String lon=request.getParameter("txtlon");
           String ins="insert into tb_place(p_name,p_latitude,p_longitude,d_id) values('"+pname+"','"+lat+"','"+lon+"','"+name+"')";
            boolean b=obj.insert(ins);
             if(b==true)
                {
                    response.sendRedirect("place.jsp?p=true");
                }
                 else
                {
                    response.sendRedirect("place.jsp?p=false");
                    System.out.println(ins);
                }
                   %>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>
