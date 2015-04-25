<%-- 
    Document   : adminchangepwd
    Created on : Jan 18, 2015, 11:36:42 PM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="conn.connection"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>

<html>
    <script language="javascript">
        var request;
            function getRequest()
            {
                if(window.XMLHttpRequest)
                    return new XMLHttpRequest();
                else if(window.ActiveXObject)
                    return new ActiveXObject("Microsoft.XMLHTTP");
                else
                    return null;
            }

       function selectpassword(q)
            {

                request=getRequest();

                request.open("GET","admin_change_pwd_ajax.jsp?idno="+q,true);
                request.onreadystatechange=function(){
                    if(request.readyState==4 || request.status==200)
                    {


                        document.getElementById("password").innerHTML=request.responseText;

                    }
                }
                request.send(null);



            }

function validatenull(frm)
{

	  if(document.frm.txtpassword.value=="")
           {
                	document.getElementById("password").innerHTML="Enter old password";
                        frm.txtpassword.focus();
                        return false;
           }
           else
           {
                 	document.getElementById("password").innerHTML="";
           }

         if(document.frm.txtpwd.value=="")
           {
                	document.getElementById("pwd").innerHTML="Enter new password";
                        frm.txtpwd.focus();
                        return false;
           }
           else
           {
                 	document.getElementById("pwd").innerHTML="";
           }
            var passw= /^((?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{8,50})$/;
           if(passw.test(document.frm.txtpwd.value)==false)
           {
                    document.getElementById("pwd").innerHTML="Not a strong password,use special characters and digits(minlength:8)";
                    document.frm.txtpwd.focus();
                    return false;
           }
           else
           {
                    document.getElementById("pwd").innerHTML="";
           }
           if(document.frm.txtpword.value=="")
           {
                	document.getElementById("pword").innerHTML="Reenter the new password";
                        frm.txtpword.focus();
                        return false;
           }
           else
           {
                 	document.getElementById("pword").innerHTML="";
           }
}
function chkpwd(txtrp, txtp)
{
    if(!txtrp.match(txtp))
	{
		document.getElementById("pword").innerHTML="Check the Password Entered";
                frm.txtpword.focus();
                //alert("Check the Password Entered");
	}
}

</script>
   

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin change password</title>
    <h3 align="center"><b><u>CHANGE PASSWORD</u></b></h3>
    </head>
     <br>
    <br>
    <br>
    <body>
        <form name="frm" action="admin_change_pwd_action.jsp">

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
             
            <table border="0" align="center" width="50%">

                <tbody>
                    <tr>
                        <td>Current Password</td>
                        <td><input type="password" name="txtpassword" onblur="selectpassword(this.value);" onfocus="txtpassword" /></td>
                         <td><div id="password" style="color:blue"></div></td>
                    </tr>
                    <tr>
                        <td>New password</td>
                        <td><input type="password" name="txtpwd"  /></td>
                         <td><div id="pwd" style="color:blue"></div></td>
                    </tr>
                     <tr>
                        <td>Confirm new password</td>
                        <td><input type="password" name="txtpword" onblur="chkpwd(this,txtpwd);" onchange="chkpwd(this,txtpwd);" /></td>
                         <td><div id="pword" style="color:blue"></div></td>
                    </tr>

                    <tr align="center">
                        <td colspan="2"><input type="submit" value="Change password" name="submit" onclick="return validatenull(frm);" onclick="return chkpwd(frm);"/>
                            <input type="reset" value="Cancel" name="reset" />
                        </td>
                    </tr>

                </tbody>
            </table>
            <table>
                    <tbody>
                <%

               if(request.getParameter("pp")!=null&&request.getParameter("pp").equalsIgnoreCase("true"))
                 {

                %>
            <tr align="center">

                    <h4 align="center" style="color:red">Password have been successfully changed </h4><tr>
                <%
                    }
                %>
                 <%

               if(request.getParameter("qq")!=null&&request.getParameter("qq").equalsIgnoreCase("false"))
                 {

                %>
            <tr align="center">

                    <h4 align="center" style="color:red">Password doesnot match </h4><tr>
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
