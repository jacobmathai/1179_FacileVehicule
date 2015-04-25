<%-- 
    Document   : route_action
    Created on : Jan 19, 2015, 10:18:32 PM
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

            String splace="";//=request.getParameter("txtsplace");
            String eplace="";//request.getParameter("txteplace");
            String interplace="";//request.getParameter("txtiplace");
             String enter="1";
             String slat="";
             String  slon="";
             String elat="";
             String elon="";
             String ilat="";
             String ilon="";
             String s="select * from tb_place where p_id="+request.getParameter("txtsplace");
             ResultSet r=obj.select(s);
             System.out.println(s);
             while(r.next())
                {
                    splace=r.getString("p_name");
                    slat=r.getString("p_latitude");
                    slon=r.getString("p_longitude");
                }
             System.out.println("slat"+slat);
             System.out.println("slon"+slon);
             String se="select * from tb_place where p_id="+request.getParameter("txteplace");
             ResultSet rs=obj.select(se);
             while(rs.next())
                {
                    eplace=rs.getString("p_name");
                    elat=rs.getString("p_latitude");
                    elon=rs.getString("p_longitude");
                }
             String sel="select * from tb_place where p_id="+request.getParameter("txtiplace");
             ResultSet rse=obj.select(sel);
             while(rse.next())
                {
                    interplace=rse.getString("p_name");
                    ilat=rse.getString("p_latitude");
                    ilon=rse.getString("p_longitude");
                
             }
             
             System.out.println(splace);
           System.out.println(eplace);
           System.out.println(interplace);
           System.out.println(slat);
           System.out.println(slon);
           System.out.println(elat);
           System.out.println(elon);
           System.out.println(ilat);
           System.out.println(ilon);

           String ins="insert into tb_route(p_id,r_start_place,r_intermediates,r_end_place,r_start_latitude,r_start_longitude,r_inter_latitude,r_inter_longitude,r_end_latitude,r_end_longitude)values('"+enter+"','"+splace+"','"+interplace+"','"+eplace+"','"+slat+"','"+slon+"','"+ilat+"','"+ilon+"','"+elat+"','"+elon+"')";

           boolean b=obj.insert(ins);
             if(b==true)
                {
                    response.sendRedirect("route.jsp?p=true");
                }
                 else
                {
                    response.sendRedirect("route.jsp?p=false");
                    System.out.println(ins);
                }
           
                   %>
    </body>
     <br>
    <br>
    <br>
      <%@include file="footer.jsp" %>
</html>
