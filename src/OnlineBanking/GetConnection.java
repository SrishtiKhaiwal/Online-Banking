package OnlineBanking;
import java.sql.*;



import java.io.*;
public class GetConnection 
{	
public static Connection getCon()
{
Connection con=null;
try
{  
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");	
}
catch (ClassNotFoundException e) 
{
e.printStackTrace();
} 
catch (SQLException e) 
{
e.printStackTrace();
}
return con;
}
public static int getPrimaryKey()
{
int nextvalue=0;
Connection con=getCon();
PreparedStatement ps2;
try 
{
ps2=con.prepareStatement("select openaccount_seq.nextval from dual");
ResultSet rs=ps2.executeQuery();
rs.next();
nextvalue=rs.getInt(1);
} 
catch (SQLException e) 
{
e.printStackTrace();
}
return nextvalue;
}
}

