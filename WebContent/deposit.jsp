<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
/* function ctck()
{
var sds = document.getElementById("dum");

} */
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
<table><%
     String num=request.getParameter("accountno");
		int accountno=Integer.parseInt(num);
        String username=request.getParameter("username");
		String password=request.getParameter("password");
		String amoun=request.getParameter("amount");
		int accoun=Integer.parseInt(amoun);
	    boolean status=VerifyLogin.checkLogin(accountno,username,password);
		//if(status==true){
		//	out.print("Welcome    " + username);
		try {
		if(status==true){
			out.print("Welcome    " + username);
		
			Connection con=GetConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from OPENACCOUNT where accountno=?");
			
            ps.setInt(1,accountno);
			ResultSet rs=ps.executeQuery();
			int dataamount=0;
			
			if(rs.next()){
			dataamount=accoun+rs.getInt(5); 
			
			}
			Connection con1=GetConnection.getCon();
			
			PreparedStatement ps1=con1.prepareStatement("update OPENACCOUNT set amount=? where accountno='"+accountno+"'");
			ps1.setInt(1,dataamount);
			ps1.executeUpdate();
			ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next()){
			out.print("your balance has increase");
			request.setAttribute("totaldataamount",dataamount);
			request.setAttribute("balance","your balance has increase");	
			%>
			<jsp:forward page="TotalBalance.jsp"></jsp:forward> 
			<% 
			}
			
					
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="deposit1.jsp"></jsp:forward> 
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
  




   
