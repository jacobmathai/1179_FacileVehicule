<%--
    Document   : route
    Created on : Jan 13, 2015, 2:16:32 PM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="conn.connection"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>

     <script language="javascript">
function validatenull()
{

        if(document.frm.txtsplace.value=="select")
		{
                    document.getElementById("splace").innerHTML="Select the start place";
			//alert("Enter Name");
			frm.txtsplace.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("splace").innerHTML=""
                     }

                     if(document.frm.txteplace.value=="select")
		{
                    document.getElementById("eplace").innerHTML="Select the end place";
			//alert("Enter Name");
			frm.txteplace.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("eplace").innerHTML=""
                     }

                     if(document.frm.txtiplace.value=="select")
		{
                    document.getElementById("iplace").innerHTML="Select the intermediate place";
			//alert("Enter Name");
			frm.txtiplace.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("iplace").innerHTML=""
                     }
}

</script>
     <h3 align="center"><b><u>ROUTE</u></b></h3>
    </head>

    <body>
        <br>
        <br>
        <br>


        <form name="frm" action="route_action.jsp">

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


               <table border="0" align="center">

                 <tbody>

              <tr>
                            <td>Start Place</td>
                        <td>
             <select name="txtsplace">
            <option value="select">---Select---</option>

            <%
            String sel="select * from tb_place order by p_name";
            ResultSet rs=obj.select(sel);
            System.out.println("sel"+rs);
            while(rs.next())
             {
            %>
            <option value="<%=rs.getString("p_id")%>"><%=rs.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>
                    <td style="color:red">*</td>
                    <td><div id="splace" style="color:blue"></div></td>
             </tr>
                     <tr>
                            <td>End Place</td>
                        <td>
             <select name="txteplace">
            <option value="select">---Select---</option>

            <%
            String se="select * from tb_place order by p_name";
            ResultSet rsl=obj.select(se);
            System.out.println("se"+rsl);
            while(rsl.next())
             {
            %>
            <option value="<%=rsl.getString("p_id")%>"><%=rsl.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>
                    <td style="color:red">*</td>
                    <td><div id="eplace" style="color:blue"></div></td>
             </tr>
                     <tr>
                            <td>Immediate Places</td>
                        <td>
             <select name="txtiplace">
            <option value="select">---Select---</option>

            <%
            String s="select * from tb_place order by p_name";
            ResultSet r=obj.select(s);
            System.out.println("s"+r);
            while(r.next())
             {
            %>
            <option value="<%=r.getString("p_id")%>"><%=r.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>
                    <td style="color:red">*</td>
                    <td><div id="iplace" style="color:blue"></div></td>
             </tr>
                    <tr>

                    </tr>
                     <tr>

                    </tr>
                     <tr>

                    </tr>
                     <tr>

                    </tr>
                    <tr align="center">
                        <td colspan="3"><input type="submit" value="ADD" name="submit" onclick="return validatenull();" />

                    </tr>
                </tbody>
            </table>

            </body>
</form>
              <br>
    <br>
    <br>
               <%@include file="footer.jsp" %>
</html>

