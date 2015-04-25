<%-- 
    Document   : view_schedule
    Created on : Jan 20, 2015, 10:12:15 PM
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

                        <th>Start Time</th>



                        <th>End Time</th>

                        <th>Action</th>

                    </tr>
                     <%
                    int cnt=1;
                    String b_id=request.getParameter("id");
                    String r_id=request.getParameter("id1");
                    String sel="select * from tb_schedule";
                    ResultSet rs=obj.select(sel);
                    while(rs.next())
                        {

                    %>

                    <tr>
                        <td><%=cnt%></td>
                        <td><%=rs.getString("sc_start_time")%></td>
                        <td><%=rs.getString("sc_end_time")%></td>
                         
                        <td><a href="establish_route.jsp?id1=<%=r_id%>&id=<%=b_id%>&id2=<%=rs.getString("sc_id")%>">Assign Route</a></td>
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

