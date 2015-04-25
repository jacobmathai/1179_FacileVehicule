/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package conn;
import java.sql.*;

/**
 *
 * @author Nimitha joy
 */


public class connection {
Connection cn=null;
ResultSet rs=null;
Statement st=null;
// "0123456789" + "ABCDE...Z"

public connection()
{
try
{
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost/mainproject","root","root");
}
catch(Exception ex)
{
    System.out.println(ex);
}
}
public boolean  insert(String str)
{
    boolean b = false;
try
{
st=cn.createStatement();
st.executeUpdate(str);
b = true;
}
catch(Exception e)
{

}
    return b;
}
public ResultSet select(String selQry)
{
try
{
 st=cn.createStatement();
 rs=st.executeQuery(selQry);
}
catch (Exception e)
{
}
return rs;
}
}