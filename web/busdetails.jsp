<%--
    Document   : busdetails
    Created on : Jan 13, 2015, 2:08:21 PM
    Author     : Nimitha joy
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="obj" class="conn.connection"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header1.jsp" %>
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


            <form name="frm" action="busdetails_action.jsp">

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
                        <td>Start Place</td>
                        <td>
             <select name="txtsname">
            <option value="select">---Select---</option>

            <%
            String sel="select * from tb_place";
            ResultSet rs=obj.select(sel);
            System.out.println("sel"+rs);
            while(rs.next())
             {
            %>
            <option value="<%=rs.getString("p_name")%>"><%=rs.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>
                       

                    </tr>
                    <tr>
                        <td>Intermediate Place</td>
                        <td>
             <select name="txtiname">
            <option value="select">---Select---</option>

            <%
            String selq="select * from tb_place";
            ResultSet rst=obj.select(selq);
            System.out.println("sel"+rst);
            while(rst.next())
             {
            %>
            <option value="<%=rst.getString("p_name")%>"><%=rst.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>


                    </tr>
                    <tr>
                        <td>End Place</td>
                        <td>
             <select name="txtename">
            <option value="select">---Select---</option>

            <%
            String selt="select * from tb_place";
            ResultSet rsq=obj.select(selt);
            System.out.println("sel"+rsq);
            while(rsq.next())
             {
            %>
            <option value="<%=rsq.getString("p_name")%>"><%=rsq.getString("p_name")%></option>
            <%
            }
            %>
             </select>
                    </td>


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
