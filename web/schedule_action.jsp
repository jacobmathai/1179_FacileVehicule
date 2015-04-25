<%-- 
    Document   : schedule_action
    Created on : Jan 20, 2015, 9:55:09 PM
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

            String stime=request.getParameter("txtstime");
            String etime=request.getParameter("txtetime");
           String ins="insert into tb_schedule(sc_start_time,sc_end_time) values('"+stime+"','"+etime+"')";
            boolean b=obj.insert(ins);
             if(b==true)
                {
                    response.sendRedirect("schedule.jsp?p=true");
                }
                 else
                {
                    response.sendRedirect("schedule.jsp?p=false");
                    System.out.println(ins);
                }
                   %>
    </body>
     <br>
    <br>
    <br>
     <%@include file="footer.jsp" %>
</html>
