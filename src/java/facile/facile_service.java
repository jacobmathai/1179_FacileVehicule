/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package facile;

import com.sun.xml.fastinfoset.util.StringArray;
import conn.connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 *
 * @author Nimitha joy
 */
@WebService()
public class facile_service {

    /**
     * Web service operation
     */
    connection con=new connection();

    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "something")
    final String something) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "taxiregistration")
    public String taxiregistration(@WebParam(name = "drivers_name")
    String drivers_name, @WebParam(name = "taxi_number")
    String taxi_number, @WebParam(name = "contact_number")
    String contact_number, @WebParam(name = "location")
    String location) {
        //TODO write your implementation code here:
        int id=0;
        String ins="insert into tb_taxi_driver(td_name,td_phno,td_location,td_taxino,td_status) values('"+drivers_name+"',"+contact_number+",'"+location+"','"+taxi_number+"',"+0+")";
        boolean b=con.insert(ins);
            if(b){
                ResultSet rs=con.select("select td_id from tb_taxi_driver");
                try{
                     rs.last();
                      id=rs.getInt("td_id");
                }
                catch(Exception e){

                }

                return ""+id;
            }
            else{
                return "failed";
            }


    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "taxiUpdate")
    public String taxiUpdate(@WebParam(name = "taxi_id")
    String taxi_id, @WebParam(name = "taxi_status")
    String taxi_status) {
        //TODO write your implementation code here:

        String qry="update tb_taxi_driver set td_status="+taxi_status+" where td_id="+taxi_id;
        boolean b=con.insert(qry);
        if(b){
            return "success";
        }
        else{
            return "failed"+qry;
        }

    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getDestination")
    public String getDestination(@WebParam(name = "c_location")
    String c_location) {
        //TODO write your implementation code here:
        String[] destination;
        String result="Destinations";
        String qry="select distinct(r_end_place) from tb_route where r_start_place='"+c_location+"' or r_intermediates='"+c_location+"' or r_end_place='"+c_location+"'";
        try
        {

            ResultSet rs=con.select(qry);
                while(rs.next())
                {
                    result=result+"/"+rs.getString("r_end_place");
                }

        }
        catch(Exception e)
        {
            System.out.println("Exception ----"+e.toString());
            result=result+":"+e.toString();
        }

        return result;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "busdetails")
    public String busdetails(@WebParam(name = "current_place")
    String current_place, @WebParam(name = "destination")
    String destination) {
        //TODO write your implementation code here:
      try
      {
        String str="select r_id from tb_route where r_intermediates='"+current_place+"' and r_end_place='"+destination+"'";
        ResultSet rst=con.select(str);
        while(rst.next())
        {
            String str1="select sc_id,bd_name from tb_busdetails where r_id="+rst.getString("r_id")+"";
            ResultSet rsq=con.select(str1);
            while(rsq.next())
            {
              String stg="select sc_start_time,sc_end_time from tb_schedule where sc_id="+rsq.getString("sc_id")+"";
              ResultSet rt=con.select(stg);
            }
        }
      }
      catch(Exception e)
      {
          System.out.println("Exception ----"+e.toString());
      }

        return null;
        }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "user_registration")
    public String user_registration(@WebParam(name = "u_name")
    String u_name, @WebParam(name = "u_email_id")
    String u_email_id, @WebParam(name = "u_phone")
    String u_phone) {
        //TODO write your implementation code here:
        int id=0;
        String ins="insert into tb_user_details(ud_name,ud_email,ud_phno) values('"+u_name+"','"+u_email_id+"','"+u_phone+"')";
        boolean b=con.insert(ins);
            if(b){
                ResultSet rs=con.select("select ud_id from tb_user_details");
                try{
                     rs.last();
                      id=rs.getInt("ud_id");
                }
                catch(Exception e){

                }

                return ""+id;
            }
            else{
                return "failed";
            }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "bus_display_details")
    public String[] bus_display_details(@WebParam(name = "c_location")
    String c_location, @WebParam(name = "destination")
    String destination) {
        //TODO write your implementation code here:
        String busName,busTime,startTime;
        ArrayList<String> bs=new ArrayList<String>();
        
        try
        {
        String str="select bd_name,r_start_place,r_intermediates,r_end_place,sc_start_time from tb_route r,tb_busdetails b,tb_schedule s where r.r_intermediates='"+c_location+"' and r_end_place='"+destination+"' and r.r_id=b.r_id and b.sc_id=s.sc_id";
        ResultSet rst=con.select(str);
            while(rst.next())
            {
                busName=rst.getString("bd_name");
                busTime=rst.getString("sc_start_time");
                startTime=rst.getString("r_start_place");
                bs.add(busName+"/"+busTime+"/"+startTime);
                
            }


        }
        catch(Exception e)
        {
            System.out.println("Exception ----"+e.toString());
        }
        String[] arr=new String[bs.size()];
        for(int i=0;i<bs.size();i++){
            arr[i]=bs.get(i);
        }
        return arr;
}

    /**
     * Web service operation
     */
    @WebMethod(operationName = "near_taxi_list")
    public String[] near_taxi_list(@WebParam(name = "c_locaation")
    String c_locaation){
        //TODO write your implementation code here:

        ArrayList<String> al=new ArrayList<String>();
        String qry="select * from tb_taxi_driver where td_location='"+c_locaation+"' and td_status=0";
            ResultSet rs=con.select(qry);
        try {
            while (rs.next()) {
                String data = rs.getString("td_name")+"/"+rs.getString("td_taxino")+"/"+rs.getString("td_phno");
                al.add(data);
            }
        } catch (SQLException ex) {
            Logger.getLogger(facile_service.class.getName()).log(Level.SEVERE, null, ex);
        }
        String[] arr=new String[al.size()];
        for(int i=0;i<al.size();i++){
            arr[i]=al.get(i);
        }
        return arr;
    }


}













