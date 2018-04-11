package bean;  
import java.sql.*;  
public class LoginUser {  
static String name;
public static boolean validate(LoginBean bean){  
boolean status=false;
try{  
Connection con=ConnectionProvider.getCon();
              
/*PreparedStatement ps=con.prepareStatement(
    "select * from REGISTEREDUSER where uname=? and passwd=?");

ps.setString(1,bean.getUname());
ps.setString(2,bean.getPass());

ResultSet rs=ps.executeQuery();
status=rs.next();*/
Statement stmt = con.createStatement();
String qry = "select * from REGISTEREDUSER";
ResultSet rs = stmt.executeQuery(qry);

while(rs.next())
            {
             String uname =  rs.getString("uname");
             String passwd = rs.getString("passwd");
             if(uname.matches(bean.getUname()) && passwd.matches(bean.getPass()))
             {
                 name=rs.getString("name");
                 return true;
             }
            }

}catch(Exception e){
System.out.println(e);}

return false;

}
public static String getName(){
    return name;
}
}  