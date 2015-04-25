<%-- 
    Document   : add_bus
    Created on : Apr 19, 2015, 9:11:22 AM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="conn.connection"></jsp:useBean>
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

        if(document.frm.txtname.value=="")
		{
                    document.getElementById("name").innerHTML="Enter the Bus Name";
			//alert("Enter Name");
			frm.txtname.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("name").innerHTML=""
                     }
                      var re3= /^([a-zA-Z, ,.]{1,20})$/;
                if(re3.test(document.frm.txtname.value)==false)
                {
                    document.getElementById("name").innerHTML="Enter  character  format";
                    document.frm.txtname.focus();
                    return false;
                }
                 else
                {
                    document.getElementById("name").innerHTML="";
                }

                if(document.frm.txtnum.value=="")
		{
                    document.getElementById("num").innerHTML="Enter the Bus Number";
			//alert("Enter Name");
			frm.txtnum.focus();
			return false;
		}
	 else
                    {
                        document.getElementById("num").innerHTML=""
                     }

                var re= /^([a-zA-Z0-9, ,.]{1,20})$/;
                if(re.test(document.frm.txtnum.value)==false)
                {
                    document.getElementById("num").innerHTML="Enter  in character and digit  format";
                    document.frm.txtnum.focus();
                    return false;
                }
                 else
                {
                    document.getElementById("num").innerHTML="";
                }

                     if((frm.type[0].checked==0)&&(frm.type[1].checked==0))
	     {
                    document.getElementById("usertype").innerHTML="Select Bus Type";
		    return false;
               }

	     else
              {
                    document.getElementById("usertype").innerHTML="";
              }

}

</script>

    </head>
    <br>
    <br>
    <br>
    <body>


            <form name="frm" action="add_bus_action.jsp">
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
                   <h3 align="center"><b><u>ADD BUS DETAILS</u></b></h3>
               </thead>
               <br>
               <br>
                 <tbody>

                    <tr>
                        <td>Bus Name</td>
                        <td><input type="text" name="txtname"></td>
                         <td style="color:red">*</td>
                         <td><div id="name" style="color:blue"></div></td>

                    </tr>

                    <tr>
                        <td>Bus Number</td>
                        <td><input type="text" name="txtnum"></td>
                         <td style="color:red">*</td>
                         <td><div id="num" style="color:blue"></div></td>

                    </tr>

                    <tr>
                        <td>Bus Type</td>
                        <td>
                            <input type="radio" name="type" value="1">KSRTC
                        </td>
                        <td>
                            <input type="radio" name="type" value="0">Private
                            </td>
                            <td><div id="usertype" style="color:blue"></div></td>

                    </tr>
                    <tr>
                        <td>Location</td>
                        <td><input type="text" name="loc" value=""></td>
                    </tr>



                    <tr align="center">
                        <td colspan="3"><input type="submit" value="ADD" name="submit" onclick="return validatenull();" />

                    </tr>
                </tbody>
            </table>
                <table>
                    <tbody>

<%

         if(request.getParameter("p")!=null&&request.getParameter("p").equalsIgnoreCase("true"))
                         {

%>
                 <tr align="center">
                 <h4 align="center" style="color:red">You have successfully registrated  </h4><tr>
<%
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

