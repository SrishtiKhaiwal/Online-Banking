package OnlineBanking;
import java.sql.*;

public class Changepassword
{
public static boolean changePassword(int accountno,String password)
{
	boolean status=false;
	Connection con=GetConnection.getCon();
	try
	{
	PreparedStatement ps=con.prepareStatement("Select * from OPENACCOUNT where accountno=? and password=? ");
	
	ps.setInt(1,accountno);
	ps.setString(2, password);
	
	ResultSet rs = ps.executeQuery();
	
	
	while(rs.next()){
		System.out.println("inside while lop");
		status=true;
	}
	
}
	catch(Exception e)
	{
	e.printStackTrace();
}
	return status;
}
}