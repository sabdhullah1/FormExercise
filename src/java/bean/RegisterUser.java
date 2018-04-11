package bean;  
  
import java.sql.*;  
  
public class RegisterUser {  
  
public static int register(User u){  
int status=0;  
try{  
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps=con.prepareStatement("insert into REGISTEREDUSER values(?,?,?)");  
ps.setString(1,u.getUname());  
ps.setString(3,u.getName());  
ps.setString(2,u.getPass());  
              
status=ps.executeUpdate();
}catch(Exception e){}  
      
return status;  
}  
  
}  
