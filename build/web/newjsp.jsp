<%-- 
    Document   : newjsp
    Created on : Mar 1, 2015, 12:27:33 AM
    Author     : Nimitha joy
--%>

<jsp:useBean class="conn.connection" id="obj"></jsp:useBean>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String drivers_name="enter";
         int contact_number=1;
          String location="enter";
           String taxi_number="enter";
         String ins="insert into tb_taxi_driver(td_name,td_phno,td_location,td_taxino,td_status) values('"+drivers_name+"',"+contact_number+",'"+location+"','"+taxi_number+"',"+0+")";
        boolean b=obj.insert(ins);
        String str="select max(td_id) from tb_taxi_driver";
        ResultSet rs=obj.select(str);
        //while(rs.next())
            //{
        rs.next();
        String tid=rs.getString("max(td_id)");

                if(b)
                {
                    System.out.println("ins"+ins);
                     System.out.println("td_id"+tid);
                    //return(tid);
                }
                else
                {
                   System.out.println("ins fail"+ins);
                   //return("failed");
                }
        %>
    </body>
</html>
