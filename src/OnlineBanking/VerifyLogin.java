package OnlineBanking;
import java.sql.*;

public class VerifyLogin 
{
public static boolean checkLogin(int accountno,String username,String password)
{
	boolean status=false;
	Connection con=GetConnection.getCon();
	try
	{
	PreparedStatement ps=con.prepareStatement("Select * from OPENACCOUNT where accountno=? and username=? and password=?");
	ps.setInt(1,accountno);
	ps.setString(2, username);
	ps.setString(3, password);
	ResultSet rs = ps.executeQuery();
	status=rs.next();
	//System.out.println("Ststua@@@@@@@@"+status);
}
	catch(Exception e)
	{
	e.printStackTrace();
}
	return status;
}
}