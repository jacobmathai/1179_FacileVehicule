<%-- 
    Document   : bus_route
    Created on : Apr 19, 2015, 9:04:54 AM
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
    <br>
    <br>
    <br>
        <h3 align="center"><b><u>LIST OF BUS</u></b></h3>
    </head>

    <br>
    <br>
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

                        <th>Name</th>

                        <th>Number</th>

                        <th>Type</th>
                        <th>Start Place</th>
                        <th>Intermediate Place</th>
                        <th>End Place</th>


                    </tr>
                     <%
                    int cnt=1;
                    String sel="select * from tb_exist_bus";
                    ResultSet rs=obj.select(sel);
                    while(rs.next())
                        {

                    %>

                    <tr>
                        <td><%=cnt%></td>
                        <td><%=rs.getString("e_name")%></td>
                        <td><%=rs.getString("e_number")%></td>
                         <td><%=rs.getString("e_type")%></td>
                         <td><%=rs.getString("e_splace")%></td>
                        <td><%=rs.getString("e_iplace")%></td>
                        <td><%=rs.getString("e_epalce")%></td>
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
    <br>
    <br>
    <br>
    <br>
    <br>
     <%@include file="footer.jsp" %>
</html>

