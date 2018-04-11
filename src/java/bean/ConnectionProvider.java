package bean;  
import java.sql.*;  
import static bean.Provider.*;  
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
Class.forName("org.apache.derby.jdbc.ClientDriver");  
con=DriverManager.getConnection("jdbc:derby://localhost:1527/Exercise");  
}catch(Exception e){
System.out.println(e);
}  
}  
  
public static Connection getCon(){  
    return con;  
}  
  
}  