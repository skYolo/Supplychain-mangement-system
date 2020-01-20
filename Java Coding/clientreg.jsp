<html>
<head>
<SCRIPT LANGUAGE="JavaScript">

function log()
 {

var var0=document.registration1.cid.value.length
  var v0=document.registration1.cid.value
  
var var1=document.registration1.firstname.value.length
  var v1=document.registration1.firstname.value

var var2=document.registration1.middlename.value.length
    var v2=document.registration1.middlename.value

var var3=document.registration1.lastname.value.length
     var v3=document.registration1.lastname.value
	
	var var4=document.registration1.street.value.length
     var v4=document.registration1.street.value
	
var var5=document.registration1.city.value.length
     var v5=document.registration1.city.value

var var6=document.registration1.pin.value.length
   var m1=parseInt(document.registration1.pin.value)


var var7=document.registration1.state.value.length
     var v7=document.registration1.state.value
	
var var8=document.registration1.c_number.value.length
   var m2=parseInt(document.registration1.c_number.value)

var var9=document.registration1.mail_id.value.length
     var v9=document.registration1.mail_id.value
	
var var10=document.registration1.a_mail_id.value.length
     var v10=document.registration1.a_mail_id.value

var var11=document.registration1.usn.value.length
     var v11=document.registration1.usn.value

var var12=document.registration1.pwd.value.length
     var v12=document.registration1.pwd.value

var var13=document.registration1.cmdp.value.length
     var v13=document.registration1.cmdp.value

var var14=document.registration1.ans.value.length
     var v14=document.registration1.ans.value

var var15=document.registration1.date.value.length
     var v15=document.registration1.date.value

if(v0.length==0)
                   {
					alert("Enter Client ID");
					document.registration1.cid.focus();
					return false
				   }

else if(v1.length==0)
                   {
					alert("Enter FirstName");
					document.registration1.firstname.focus();
					return false
				   }
else if(v2.length==0)
                   {
					alert("Enter MiddleName");
					document.registration1.middlename.focus();
					return false
				   }
else if(v3.length==0)
                   {
					alert("Enter LastName");
					document.registration1.lastname.focus();
					return false
				   }
else if(v4.length==0)
                   {
					alert("Enter Street");
					document.registration1.street.focus();
					return false
				   }
else if(v5.length==0)
                   {
					alert("Enter City");
					document.registration1.city.focus();
					return false
				   }

else if(isNaN(m1))
													 {
													 alert("Enter the pin number");
													 document.registration1.pin.focus();
													 return false
													 }
										




else if(v7.length==0)
                   {
					alert("Enter State");
					document.registration1.state.focus();
					return false
				   }

else if(isNaN(m2))
													 {
													 alert("Enter the  contact Number");
													 document.registration1.c_number.focus();
													 return false
													 }
										





else if(v9.length==0)
                   {
					alert("Enter Mail id");
					document.registration1.mail_id.focus();
					return false
				   }
else if(v10.length==0)
                   {
					alert("Enter Alternate Mail id");
					document.registration1.a_mail_id.focus();
					return false
				   }
else if(v11.length==0)
                   {
					alert("Enter UserName");
					document.registration1.usn.focus();
					return false
				   }
else if(v12.length==0)
                   {
					alert("Enter Password");
					document.registration1.pwd.focus();
					return false
				   }
else if(v13.length==0)
                   {
					alert("Enter CamformPassword");
					document.registration1.cmdp.focus();
					return false
				   }

					else if(v14.length==0)
                   {
					alert("Enter Answer");
					document.registration1.ans.focus();
					return false
				   }
else if(v15.length==0)
                   {
					alert("Enter Date");
					document.registration1.date.focus();
					return false
				   }


return true
 }


</SCRIPT>
</head>
<body bgcolor="tan">
<form action="Clientinfo.jsp"  name= registration1  method="post" onsubmit='return log()'>
<center>
<p><h1><strong>Client Registration Form</strong></h1>

 ClientID<input type=text name="cid"><br><br>
   First name<input type=text name="firstname"><br><br>
   Middle name<input type=text name="middlename"><br><br>
   Last name<input type=text name="lastname"><br><br>
<center><h2>Address</h2></center>
   Street<input type=text name="street"><br><br>
   City<input type=text name="city"><br>  <br>
   Pin<input type=text name="pin"><br><br>
   State<input type=text name="state" ><br><br>
   Contact Number<input type=text name="c_number"><br><br>
   Mail id<input type=text name="mail_id"><br><br>
   Alternate Mail id<input type=text name="a_mail_id"><br><br>
   User Name<input type=text name="usn"><br><br>
    Password<input type="password" name="pwd"><br><br>
   Confirm Password<input type="password" name="cmdp"><br><br><br>
<select name="security_question">
<option>select security question</option>
<option>your favourite pet</option>
<option>date of birth</option>
<option>your favourate actor</option>
<option>your favourite pass time</option>
<option>your hobby</option></select><br><br>
   Answer<input type=text name="ans"><br><br><br>
   Date<input type=text name="date">dd/mm/year<br><br><br>
<input type=submit name=submit>
<input type=reset name=reset><br><br></p></center>
</form>
</body>
</html>