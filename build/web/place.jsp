<%-- 
    Document   : place
    Created on : Jan 15, 2015, 9:49:05 AM
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

        if(document.frm.txtdname.value=="select")
		{
                    document.getElementById("dname").innerHTML="Select the district";
			//alert("Enter Name");
			frm.txtdname.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("dname").innerHTML=""
                     }

 if(document.frm.txtpname.value=="")
		{
                    document.getElementById("pname").innerHTML="Enter place name";
			//alert("Enter Name");
			frm.txtpname.focus();
			return false;
		}
                 else
                    {
                        document.getElementById("pname").innerHTML=""
                     }
  if(document.frm.txtlat.value=="")
           {
                	document.getElementById("lat").innerHTML="Enter latitude of the place";
                        frm.txtlatword.focus();
                        return false;
           }
           else
           {
                 	document.getElementById("lat").innerHTML="";
           }

  if(document.frm.txtlon.value=="")
              {
                    document.getElementById("lon").innerHTML="Enter longitude of the place";
                    frm.txtlon.focus();
                    return false;
              }
              else
              {
                    document.getElementById("lon").innerHTML="";
              }

}

</script>
     <h3 align="center"><b><u>PLACE</u></b></h3>
    </head>

    <body>
        <br>
        <br>
        <br>


        <form name="frm" action="place_action.jsp">

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
                            <td>District</td>
                        <td>
             <select name="txtdname">
            <option value="select">---Select---</option>
            
            <%
            String sel="select * from tb_district order by d_name";
            ResultSet rs=obj.select(sel);
            System.out.println("sel"+rs);
            while(rs.next())
             {
            %>
            <option value="<%=rs.getString("d_id")%>"><%=rs.getString("d_name")%></option>
            <%
            }
            %>
             </select>
                    </td>
                    <td style="color:red">*</td>
                    <td><div id="dname" style="color:blue"></div></td>
             </tr>
                     <tr>
                        <td>Place Name</td>
                        <td><input type="text" name="txtpname"></td>
                         <td style="color:red">*</td>
                         <td><div id="pname" style="color:blue"></div></td>
                    </tr>
                     <tr>
                        <td>Place latitude</td>
                        <td><input type="text" name="txtlat"></td>
                         <td style="color:red">*</td>
                         <td><div id="lat" style="color:blue"></div></td>
                    </tr>
                    <tr>
                        <td>Place longitude</td>
                        <td><input type="text" name="txtlon"></td>
                        <td style="color:red">*</td>
                        <td><div id="lon" style="color:blue"></div></td>

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
             <br>
             <br>
             <br>
             <br>
             <table border="1" align="center"width="25%">

                <tbody>
                    <tr>
                         <th>Sl.No</th>
                        <th>Place Name</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>District</th>
                    </tr>

                    <%
                    int cnt=1;
                   String se="select * from tb_place";
                   ResultSet rr=obj.select(se);

                    while(rr.next())
                        {


                    String pname=rr.getString("p_name");
                     String lat = rr.getString("p_latitude");
                    String lon=rr.getString("p_longitude");
                    String s="select * from tb_district where d_id='"+rr.getString("d_id")+"'";
                    ResultSet re=obj.select(s);
                    while(re.next())
                     {
%>
                    <tr>
                         <td><%=cnt%></td>
                        <td><%=pname%></td>
                        <td><%=lat%></td>
                        <td><%=lon%></td>
                        <td><%=re.getString("d_name")%></td>
                    </tr>
                    <%
                    cnt++;
                    }
}%>

                </tbody>
            </table>



            </body>
</form>
 <br>
    <br>
    <br>
 <%@include file="footer.jsp" %>
</html>

