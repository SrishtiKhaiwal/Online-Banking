<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>WELCOME BANK<span class="style1"></span></h1>
    <h2>Outstanding Service</h2>
    <div id="home">	
   <font size="4px"> <A href="index.html">HOME</A></font>
    </div>
</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="changepassword1.jsp">CHANGE PASSWORD</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">Contact Us</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" >
    	<div id="services">
		    <p>We enjoy working together to make lives better and more secure.</p>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>



    
    <!-- <td width="1200" valign="top"> -->
    	
    	<% 
%>
<table><%
        String num=request.getParameter("accountno");
		int accountno=Integer.parseInt(num);
        String password=request.getParameter("password");
		String newpassword=request.getParameter("newpassword");
		String newrepassword=request.getParameter("newrepassword");
		boolean status=Changepassword.changePassword(accountno,password);
		/* System.out.println("dshgsgfjhdg"+status); */
		try {
		 if(status==true){
		/* Connection con=GetConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from OPENACCOUNT where accountno=?");
			
            ps.setInt(1,accountno);  */
            /* ps.setString(3,newpassword);
			ps.setString(4,newrepassword); */
			/* ResultSet rs=ps.executeQuery();
			boolean flag=false;
			while(rs.next()){
			flag=true;
			} */
			
			Connection con1=GetConnection.getCon();
			
 			PreparedStatement ps1=con1.prepareStatement("update OPENACCOUNT set password='"+newpassword+"',repassword='"+newrepassword+"'where accountno='"+accountno+"'");			
 			//PreparedStatement ps1=con1.prepareStatement("update OPENACCOUNT set password=?,repassword=? where accountno='"+accountno+"'");
 			//PreparedStatement ps1=con.prepareStatement("update OPENACCOUNT set password='"+newpassword+"' where accountno='"+accountno+"'");
 			//int i=ps1.executeUpdate();
			/*  ps1.setString(3,newpassword);
			ps1.setString(4,newrepassword);
			ps1.setInt(1,accountno);  */
			ps1.executeUpdate();
			ResultSet rs1=ps1.executeQuery();
			Connection con2=GetConnection.getCon();
			PreparedStatement ps2=con2.prepareStatement("Select * from OPENACCOUNT where accountno=?");
			ps2.setInt(1,accountno); 
			ResultSet rs2=ps2.executeQuery();
		out.print("<table align='left' cellspacing='5' cellpadding='5'>");
		
			out.print("<tr><th>ACCOUNT NO</th><th>PASSWORD</th></tr>");
			while(rs2.next())
			{
			
				out.print("<tr>");
				out.print("<td>" + rs2.getInt(1) + "</td>");
				out.print("<td>" + rs2.getString(3) + "</td>");
				out.print("</tr>");
			
			}
			out.print("</table>");
			}
		
		else{
		
			
			
			request.setAttribute("balance","Please check your Old Password");
			%>
			
			 <jsp:forward page="changepassword1.jsp"></jsp:forward> 
			 
			<% 
			}
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
		
			%></table><%
%>
    	
    	
		 </table>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="OnlineBanking.*" %>


   
