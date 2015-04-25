<%--
    Document   : index
    Created on : Jan 13, 2015, 12:31:25 PM
    Author     : Nimitha joy
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>

     <script language="javascript">
function validatenull()
{

        if(document.frm.txtname.value=="")
		{
                    document.getElementById("name").innerHTML="Enter Name";
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
 if(document.frm.txtusername.value=="")
		{
                    document.getElementById("uname").innerHTML="Enter user Name";
			//alert("Enter Name");
			frm.txtusername.focus();
			return false;
		}
                 else
                    {
                        document.getElementById("uname").innerHTML=""
                     }
  if(document.frm.txtpassword.value=="")
           {
                	document.getElementById("pwd").innerHTML="Enter password";
                        frm.txtpassword.focus();
                        return false;
           }
           else
           {
                 	document.getElementById("pwd").innerHTML="";
           }
            var passw= /^((?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{8,50})$/;
           if(passw.test(document.frm.txtpassword.value)==false)
           {
                    document.getElementById("pwd").innerHTML="Not a strong password,use special characters and digits(minlength:8)";
                    document.frm.txtpassword.focus();
                    return false;
           }
           else
           {
                    document.getElementById("pwd").innerHTML="";
           }
  if(document.frm.txtplace.value=="")
              {
                    document.getElementById("userplace").innerHTML="Enter the address";
                    frm.txtplace.focus();
                    return false;
              }
              else
              {
                    document.getElementById("userplace").innerHTML="";
              }
if(document.frm.txtemail.value=="")
		{
                        document.getElementById("email").innerHTML="Enter email id";
			//alert("Enter Email_id");
			frm.txtemail.focus();
			return false;
		}
               else
                    {
                        document.getElementById("email").innerHTML="";
                     }




                     var reg3=/^([A-Za-z0-9_\-\.])+\@([A-Za-z])+\.([A-Za-z]{2,4})$/;
                if(reg3.test(document.frm.txtemail.value)==false)
                {

                    document.getElementById("email").innerHTML="Format not valid";
                    document.frm.txtemail.focus();
                    return false;
                }
                else
                {
                    document.getElementById("email").innerHTML="";
                }
  if(document.frm.txtnumber.value=="")
              {
                    document.getElementById("userphno").innerHTML="Enter the phone number";
                    frm.txtnumber.focus();
                    return false;
              }
              else
              {
                        document.getElementById("userphno").innerHTML="";
              }
	      var re2= /^([0-9]{10})$/;
	      if(re2.test(document.frm.txtnumber.value)==false)
                {
                     document.getElementById("userphno").innerHTML="Enter phone number in correct format";
                     document.frm.txtnumber.focus();
                     return false;
                }
              else
              {
                    document.getElementById("userphno").innerHTML="";
              }

}

</script>
     <h3 align="center"><b><u>USER REGISTRATION</u></b></h3>
    </head>

    <body>
        <br>
        <br>
        <br>


            <form name="frm">

               <table border="0" align="center">

                 <tbody>

                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="txtname"></td>
                         <td style="color:red">*</td>
                         <td><div id="name" style="color:blue"></div></td>

                    </tr>
                     <tr>
                        <td>Username</td>
                        <td><input type="text" name="txtusername"></td>
                         <td style="color:red">*</td>
                         <td><div id="uname" style="color:blue"></div></td>
                    </tr>
                     <tr>
                        <td>Password</td>
                        <td><input type="password" name="txtpassword"></td>
                         <td style="color:red">*</td>
                         <td><div id="pwd" style="color:blue"></div></td>
                    </tr>
                    <tr>
                        <td>Place</td>
                        <td><textarea name="txtplace" rows="6" cols="20"></textarea></td>
                        <td><div id="userplace" style="color:blue"></div></td>

                    </tr>
                      <tr>
                         <td>Email id</td>
                        <td><input type="text" name="txtemail"></td>
                         <td style="color:red">*</td>
                         <td><div id="email" style="color:blue"></div></td>

                    </tr>

                      <tr>
                        <td>Mobile No</td>
                        <td><input type="text" name="txtnumber"></td>
                         <td style="color:red">*</td>
                         <td><div id="userphno" style="color:blue"></div></td>

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
