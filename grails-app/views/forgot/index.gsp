<HTML>
<HEAD>
<TITLE>Forgot Password Form</TITLE>
<SCRIPT language=JavaScript>
function checkform (form )
{
var dynamic_value = "";
	if (form.email.value == "") 
	{
		alert("Please enter your e-mail address." );
		form.email.focus();
		return false ;
	}
	else
	{
	
	dynamic_value = document.getElementById("email").value;
	//alert(dynamic_value);
	document.form.action = "http://localhost:8080/loginApp/user/edit/"+dynamic_value;
	}
	return true ;
}
</SCRIPT>
<script src="/ga.js" type="text/javascript"></script>
</HEAD>
	<body>
	<table width="60%" cellspacing="0" cellpadding="1" border="0" align="center" bgcolor="#818181">
	<tr>
		<td>
		<table width="100%" cellspacing="0" cellpadding="5" border="0" align="center">
		<tr>
			<td bgcolor="#C9DCEE"><FONT face="verdana, arial, helvetica" size="2"><b>Forgot your Password?</b></font></td>
		</tr>
		</table>
	
		<table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
		<tr>
			<td bgcolor="#818181"><img src="$imgurl/pixel.gif" HEIGHT=1 width=1 BORDER=0></td>
		</tr>
		</table>
	
		<table width="100%" cellspacing="0" cellpadding="15" border="0" align="center">
		<tr>
			<td bgcolor="#FFFFFF" valign=TOP>
			<FORM method="post" name="form" id="search-theme-form" action="#" onSubmit="return checkform(form)">
			
			<center>
			<FONT face="verdana, arial, helvetica" size="2">
			Enter the e-mail address you submitted at registration.  
			<BR>Your password will be e-mailed to you immediately. 
			<P>
			<table BORDER=0>
			<tr>
			<td><center><b><FONT face="verdana, arial, helvetica" size="2">E-mail Address</b><BR><input type="text" name="email" id="email" size=20></td>

			<td>&nbsp;</td>
			</tr>
			</table></center>
			<P>
			<center>
			<FONT face="verdana, arial, helvetica" size="2"><input type="SUBMIT" Value=" Retrieve Password " >
			</center>
			</FORM>
			</td>
		</tr>
		</table>
		</td>
	</tr>
</table>
</body>
</html>