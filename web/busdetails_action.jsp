<%-- 
    Document   : busdetails_action
    Created on : Jan 18, 2015, 10:37:49 PM
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
            String sname=request.getParameter("txtsname");
            String iname=request.getParameter("txtiname");
            String ename=request.getParameter("txtename");
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
            
           String ins="insert into tb_exist_bus(e_name,e_number,e_type,e_splace,e_iplace,e_epalce) values('"+name+"','"+num+"','"+type1+"','"+sname+"','"+iname+"','"+ename+"')";
            boolean b=obj.insert(ins);
             if(b==true)
                {
                    response.sendRedirect("busdetails.jsp?p=true");
                }
                 else
                {
                    response.sendRedirect("busdetails.jsp?p=false");
                    System.out.println(ins);
                }
                   %>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>

