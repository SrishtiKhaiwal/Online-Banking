<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("A/C No.  must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }

   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
    if(isNaN(document.F1.taccountno.value))
   {
       alert("target account  must  be  number & can't be null")
	   document.F1.taccountno.value=""
	   document.F1.taccountno.focus()
	   return false
   }
 if(document.F1.accountno.value == document.F1.taccountno.value)
    {
	   alert("Change target accountno"); 
	   document.F1.taccountno.value=""
	   document.F1.taccountno.focus()	
	   return false
	}


   if(isNaN(document.F1.amount.value))
   {
       alert("Amount  must  be  number & can't be null")
	   document.F1.amount.value=""
	   document.F1.amount.focus()
	   return false
   }

   return true   
}
</SCRIPT>

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



<table style="width:896px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" >
    	<div id="services">
    	<p font-size:"1000px;">We enjoy working together to make lives better and more secure.</p>
			
       </div>
	</td>
    
    <td width="450" valign="top">
    	<div id="welcome" ><h1>TRANSFER FORM</h1><br>
    	    <table align="center" bgcolor="white">
		<tr>
			
		</tr>
		<tr>
			<td><div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				<form name=F1 onSubmit="return dil(this)" action="transfer.jsp" >
				    <table cellspacing="5" cellpadding="3">
				    <tr><td>ACCOUNT NO:</td><td> <input type="text" name="accountno"/></td></tr>
					<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>TARGET ACCOUNT NO:</td><td><input type="text" name="taccountno"/></td></tr>
					<tr><td>AMOUNT:</td><td> <input type="text" name="amount"/></td></tr>
					<!-- Gender:<br/><br/>
					Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					<INPUT TYPE=RESET VALUE="Clear"></td></tr>
					</table>
		    		</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
   <td width="299" valign="top">
    	<div id="welcome" ><center><h1>WELCOME</h1></center><br>
    	    <center><img src="images/image8.jpg" alt="business" width="280" height="200"></center><br>
		    <!-- <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p> -->
	    	
	    </div>      
    </td> 
             	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
	  
<center>Copyright © Your Company Name</center></div>s</div>

<!-- <script type="text/javascript">
document.onload = ctck();
</script> -->
</div>

</body>
</html>
