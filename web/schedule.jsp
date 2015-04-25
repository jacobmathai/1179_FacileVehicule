<%--
    Document   : schedule
    Created on : Jan 13, 2015, 2:51:34 PM
    Author     : Nimitha joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

     <script language="javascript">
function validatenull()
{

        if(document.frm.txtstime.value=="")
		{
                    document.getElementById("stime").innerHTML="Enter the start time";
			//alert("Enter Name");
			frm.txtstime.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("stime").innerHTML=""
                     }





                if(document.frm.txtetime.value=="")
		{
                    document.getElementById("etime").innerHTML="Enter the end time";
			//alert("Enter Name");
			frm.txtetime.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("etime").innerHTML=""
                     }


}

</script>

    </head>
    <br>
    <br>
    <br>
    <body>


        <form name="frm" action="schedule_action.jsp">

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
               <thead>
                   <h3 align="center"><b><u>SCHEDULE</u></b></h3>
               </thead>
               <br>
               <br>
                 <tbody>

                    <tr>
                        <td>Start time</td>
                        <td><input type="time" name="txtstime"></td>
                         <td style="color:red">*</td>
                         <td><div id="stime" style="color:blue"></div></td>

                    </tr>
                    <tr>
                        <td>End time</td>
                        <td><input type="time" name="txtetime"></td>
                         <td style="color:red">*</td>
                         <td><div id="etime" style="color:blue"></div></td>

                    </tr>

                    <tr align="center">
                        <td colspan="3"><input type="submit" value="ADD" name="submit" onclick="return validatenull();" />

                    </tr>
                </tbody>
            </table>


        </form>
    </body>
     <br>
    <br>
    <br>
 <%@include file="footer.jsp" %>
</html>
