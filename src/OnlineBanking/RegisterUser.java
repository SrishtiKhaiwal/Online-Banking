package OnlineBanking;
import java.sql.*;
import OnlineBanking.GetConnection;
public class RegisterUser 
{
public static int register(String username,String password,String repassword,double amount,String address,double phoneno,String address2,String DateOfBirth)
{
	int status=0;
Connection con=GetConnection.getCon();
PreparedStatement ps;
try {
	ps = con.prepareStatement("Insert into OPENACCOUNT values(?,?,?,?,?,?,?,?,?)");
	int	nextvalue1=GetConnection.getPrimaryKey();
	ps.setInt(1,nextvalue1);
	ps.setString(2,username);
	ps.setString(3,password);
	ps.setString(4,repassword);
	ps.setDouble(5,amount);
	ps.setString(6,address);
	ps.setDouble(7,phoneno);
	ps.setString(8, address2);
	ps.setString(9,DateOfBirth);
	status=ps.executeUpdate();
	
} catch (SQLException e) {
	
	e.printStackTrace();
}
return status;
}
}
