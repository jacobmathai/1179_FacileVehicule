<%-- 
    Document   : add_bus_action
    Created on : Apr 19, 2015, 9:14:09 AM
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

            String name=request.getParameter("txtname");
            String num=request.getParameter("txtnum");
            String loc=request.getParameter("loc");
            int type=Integer.parseInt(request.getParameter("type"));
            String type1="";
            if(type==1)
                {
                    type1="KSRTC";
                }
            else
                {
                    type1="Private";
                }
            int enter=0;
           String ins="insert into tb_busdetails(bd_name,bd_type,bd_number,bd_status,r_id,sc_id,bd_location) values('"+name+"','"+type1+"','"+num+"','"+enter+"','"+enter+"','"+enter+"','"+loc+"')";
            boolean b=obj.insert(ins);
             if(b==true)
                {
                    response.sendRedirect("add_bus.jsp?p=true");
                }
                 else
                {
                    response.sendRedirect("add_bus.jsp?p=false");
                    System.out.println(ins);
                }
                   %>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>

