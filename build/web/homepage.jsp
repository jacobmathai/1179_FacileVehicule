<%-- 
    Document   : homepage
    Created on : Jan 18, 2015, 9:35:31 PM
    Author     : Nimitha joy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
 <script language="javascript">
function validatenull(frm)
{

            if(document.frm.txtusername.value=="")
              {
                	document.getElementById("usernme").innerHTML="Enter username";
                        frm.txtusername.focus();
                        return false;
              }
              else
              {
                 	document.getElementById("usernme").innerHTML=""
              }
              
	 if(document.frm.txtpassword.value=="")
		{
                        document.getElementById("userpwd").innerHTML="Enter Password";
			frm.txtpassword.focus();
			return false;
		}
	else
		{
			document.getElementById("userpwd").innerHTML=""
		}



}
function chkpwd(txtrp, txtp)
{
	if((txtrp.value)!=(txtp.value))
	{
		alert("Check the Password Entered");
	}
}
function chkusername(txt)
{
	if(txt.value=="")
	{
		alert("Enter User Name");
	}
}


</script>

    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
    <h3 align="center"><b><u>LOGIN</u></b></h3>
    </head>
    <br>
    <br>
    <body>
        <form action="homepage_action.jsp" name="frm">
            <table border="0" align="center">

                <tbody>
                    <tr>
                        <th>Username</th>
                        <td><input type="text" name="txtusername" value="" /></td>
                         <td style="color:red">*</td>
                         <td><div id="usernme" style="color:blue"></div></td>
                    </tr>

                    <tr>
                        <th>Password</th>
                        <td><input type="password" name="txtpassword" value="" /></td>
                         <td style="color:red">*</td>
                         <td><div id="userpwd" style="color:blue"></div></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="Sign in" name="submit" onclick="return validatenull(frm);" /></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>

                    </tr>
                    <tr>

                    </tr>

                    <tr align="center">
                         <td colspan="2"><a href="busdetails.jsp"><img src="Register Button.jpg"/></a></td>
                    </tr>

                </tbody>
            </table>
<table>
                    <tbody>
                        <%

                        if(request.getParameter("qq")!=null&&request.getParameter("qq").equalsIgnoreCase("false"))
                         {

%>
                    <tr align="center">
                 <h4 align="center" style="color:red">The Username or Password you entered is incorrect.  </h4><tr>
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

