<%-- 
    Document   : establish_route
    Created on : Jan 19, 2015, 11:04:58 PM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*" %>
<jsp:useBean class="conn.connection" id="obj"></jsp:useBean>
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

        String r_id=request.getParameter("id1");
        String ins="update tb_busdetails set bd_status=1 where bd_id="+request.getParameter("id")+"";
        System.out.println("r_id"+request.getParameter("id1"));
        System.out.println("b_id"+request.getParameter("id"));
         System.out.println("sc_id"+request.getParameter("id2"));
        System.out.println("ins  "+ins);
        boolean b=obj.insert(ins);
        if (b==true)
        {
                   String ins1="update tb_busdetails set r_id='"+r_id+"',sc_id='"+request.getParameter("id2")+"' where bd_id="+request.getParameter("id")+"";
                   boolean c=obj.insert(ins1);
                   if (c==true)
                       {
                           
                            response.sendRedirect("admin_view_bus.jsp?successfully");
                       }
                             
                   
        }

        else
        {
                System.out.println("hai");
                response.sendRedirect("admin_view_bus.jsp?failed");

         }

   %>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>
