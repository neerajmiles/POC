<HTML>
<HEAD>
<TITLE>Request Status !</TITLE>
<SCRIPT language=JavaScript>

function sendMail(dynamic_value)
 {

alert(dynamic_value);
    var staticlink = "http://localhost:8080/loginApp/forgot/find/"+dynamic_value;
    var link = "mailto:"+dynamic_value             
             + "&subject=" + escape("Password Reset Link") 
			 
            + "&body=" + escape(staticlink)
  //  ;
	
alert(link);

    window.location.href = link;
}
function checkform (form )
{
	document.form.action = "http://localhost:8080/loginApp/login/auth?format=";

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
			<td bgcolor="#C9DCEE"><FONT face="verdana, arial, helvetica" size="2"><b>Request Status !</b></font></td>
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
			We have E-Mailed the link to the e-mail address you submitted at registration.
			<BR>Set your New Password following the link been e-mailed to you, immediately.
			<P>
			<table BORDER=0>
			<tr>


			<td>&nbsp;</td>
			</tr>
			</table></center>
			<P>
			<center>
			<FONT face="verdana, arial, helvetica" size="2"><input type="SUBMIT" Value=" Re - Login " >
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