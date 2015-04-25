<%-- 
    Document   : approve
    Created on : Jan 18, 2015, 11:29:07 PM
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
        <h3 align="center"><b><u>AVAILABLE ROUTES</u></b></h3>
    </head>
    <body>
        <form name="frm">
            <table border="0" align="left" cellspacing="20" cellpadding="5">
                  <tbody>
                      <tr>
                        <td><a href="add_bus.jsp">ADD NEW BUS</a></td>

                    </tr>
                      <tr>
                        <td><a href="bus_route.jsp">BUS AND ROUTE</a></td>

                    </tr>

                      <tr>
                        <td><a href="admin_view_bus.jsp">VIEW BUS DETAILS</a></td>

                    </tr>

                    <tr>
                        <td><a href="adminchangepwd.jsp">CHANGE PASSWORD</a></td>

                    </tr>
                    <tr>
                        <td><a href="route.jsp">ESTABLISH A ROUTE</a></td>

                    </tr>
                    <tr>
                        <td><a href="place.jsp">ADD PLACE</a></td>

                    </tr>
                    <tr>
                        <td><a href="schedule.jsp">SCHEDULE TIME</a></td>

                    </tr>

                </tbody>
            </table>
      <table border="1" align="center">
            <tbody>
                 <tr>
                        <th>Slno</th>

                        <th>Start Place</th>

                        <th>Intermediates</th>

                        <th>End Place</th>

                        <th>Action</th>

                    </tr>
                     <%
                    int cnt=1;
                    String b_id=request.getParameter("id");
                    System.out.println("b_id"+b_id);
                    String sel="select * from tb_route";
                    ResultSet rs=obj.select(sel);
                    while(rs.next())
                        {

                    %>

                    <tr>
                        <td><%=cnt%></td>
                        <td><%=rs.getString("r_start_place")%></td>
                        <td><%=rs.getString("r_intermediates")%></td>
                         <td><%=rs.getString("r_end_place")%></td>
                         <td><a href="view_schedule.jsp?id1=<%=rs.getString("r_id")%>&id=<%=b_id%>">Time Schedule</a></td>
                        
                    </tr>
                    <%
cnt++;
                    }

 %>
            </tbody>
        </table>
        </form>
    </body>
     <br>
    <br>
    <br>
    <%@include file="footer.jsp" %>
</html>
