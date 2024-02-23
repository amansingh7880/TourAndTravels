<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doEnable()
{
if(document.mainform.type.value=="RT")
{
document.mainform.dropoffcity.disabled = true;
}
else
{
document.mainform.dropoffcity.disabled = false;
//document.mainform.dmm.disabled = true;
//document.mainform.dyy.disabled = true;
}
}
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/carconfirm"%>";				
document.mainform.submit();
}
else
{alert(strErrMsg);}
}
function doValidations()
{
var ddIndex;
var strTemp;
var strFld;
var frmDoc;
var strErrMsg;
strErrMsg = "";
frmDoc = document.mainform;			
strFld = frmDoc.cardno
if (strFld.value == ""|| strFld.value.length<4 || strFld.value.length >4 ) 		
strErrMsg = strErrMsg + " Credit Crad No. is Invalid\n";
return strErrMsg;
}

</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Travel Management</center></B><BR></TD></TR></TABLE>
<FORM name=mainform method=post action="<%=path+"/login"%>">
<table cellspacing=0 cellpadding=4>
	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input value="<%=user%>">
		</TR>
		<TR>
			<td align=right>Type&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="type" onChange="javascript:doEnable();" >
<option value="RT">Round Trip</option>
<option value="OW">One Way</option>
</select></TD></TR>
		<TR>
			<TD align=right>Pick-Up City&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="pickupcity"  id="pickupcity">
<option value="ND">New Delhi</option>
<option value="KL">Kolkta</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="CD">Chandigarh</option>
<option value="AD">Ahemdabad</option>
</select></TD></TR>
		<tr><td align=right>Drop-off City&nbsp;&nbsp;:&nbsp;&nbsp;</td>
		<td><select name="dropoffcity" size="1" id="dropoffcity" disabled = "true">
<option value="ND">New Delhi</option>
<option value="KL">Kolkta</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="CD">Chandigarh</option>
<option value="AD">Ahemdabad</option>
</select>  </td>
		</tr>
		<TR>
			<TD align=right>Pick-up Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="pickupdate" id="pickupdate"type="date"class=input></TD>
		</TR>
	<TR>
			<TD align=right>Drop-off Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="dropoffdate"  id="dropoffdate"type="date"class=input></TD>
		</TR>
	<TR>
			<TD align=right>Pick-up Time&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><SELECT class=font9 id=select2 
name=pickuptime>
<OPTION value=00:00>00:00</OPTION>
<OPTION 
value=00:15>00:15</OPTION>
<OPTION 
value=00:30>00:30</OPTION>
<OPTION 
value=00:45>00:45</OPTION>
<OPTION 
value=01:00>01:00</OPTION>
<OPTION 
value=01:15>01:15</OPTION>
<OPTION 
value=01:30>01:30</OPTION>
<OPTION 
value=01:45>01:45</OPTION>
<OPTION 
value=02:00>02:00</OPTION>
<OPTION 
value=02:15>02:15</OPTION>
<OPTION 
value=02:30>02:30</OPTION>
<OPTION 
value=02:45>02:45</OPTION>
<OPTION 
value=03:00>03:00</OPTION>
<OPTION 
value=03:15>03:15</OPTION>
<OPTION 
value=03:30>03:30</OPTION>
<OPTION 
value=03:45>03:45</OPTION>
<OPTION 
value=04:00>04:00</OPTION>
<OPTION 
value=04:15>04:15</OPTION>
<OPTION 
value=04:30>04:30</OPTION>
<OPTION 
value=04:45>04:45</OPTION>
<OPTION 
value=05:00>05:00</OPTION>
<OPTION 
value=05:15>05:15</OPTION>
<OPTION 
value=05:30>05:30</OPTION>
<OPTION 
value=05:45>05:45</OPTION>
<OPTION 
value=06:00>06:00</OPTION>
<OPTION 
value=06:15>06:15</OPTION>
<OPTION 
value=06:30>06:30</OPTION>
<OPTION 
value=06:45>06:45</OPTION>
<OPTION 
value=07:00>07:00</OPTION>
<OPTION 
value=07:15>07:15</OPTION>
<OPTION 
value=07:30>07:30</OPTION>
<OPTION 
value=07:45>07:45</OPTION>
<OPTION 
value=08:00>08:00</OPTION>
<OPTION 
value=08:15>08:15</OPTION>
<OPTION 
value=08:30>08:30</OPTION>
<OPTION 
value=08:45>08:45</OPTION>
<OPTION 
value=09:00>09:00</OPTION>
<OPTION 
value=09:15>09:15</OPTION>
<OPTION 
value=09:30>09:30</OPTION>
<OPTION 
value=09:45>09:45</OPTION>
<OPTION 
value=10:00>10:00</OPTION>
<OPTION 
value=10:15>10:15</OPTION>
<OPTION 
value=10:30>10:30</OPTION>
<OPTION 
value=10:45>10:45</OPTION>
<OPTION 
value=11:00>11:00</OPTION>
<OPTION 
value=11:15>11:15</OPTION>
<OPTION 
value=11:30>11:30</OPTION>
<OPTION 
value=11:45>11:45</OPTION>
<OPTION value=12:00 
selected>12:00</OPTION>
<OPTION value=12:15>12:15</OPTION>
<OPTION value=12:30>12:30</OPTION>
<OPTION 
value=12:45>12:45</OPTION>
<OPTION 
value=13:00>13:00</OPTION>
<OPTION 
value=13:15>13:15</OPTION>
<OPTION 
value=13:30>13:30</OPTION>
<OPTION 
value=13:45>13:45</OPTION>
<OPTION 
value=14:00>14:00</OPTION>
<OPTION 
value=14:15>14:15</OPTION>
<OPTION 
value=14:30>14:30</OPTION>
<OPTION 
value=14:45>14:45</OPTION>
<OPTION 
value=15:00>15:00</OPTION>
<OPTION 
value=15:15>15:15</OPTION>
<OPTION 
value=15:30>15:30</OPTION>
<OPTION 
value=15:45>15:45</OPTION>
<OPTION 
value=16:00>16:00</OPTION>
<OPTION 
value=16:15>16:15</OPTION>
<OPTION 
value=16:30>16:30</OPTION>
<OPTION 
value=16:45>16:45</OPTION>
<OPTION 
value=17:00>17:00</OPTION>
<OPTION 
value=17:15>17:15</OPTION>
<OPTION 
value=17:30>17:30</OPTION>
<OPTION 
value=17:45>17:45</OPTION>
<OPTION 
value=18:00>18:00</OPTION>
<OPTION 
value=18:15>18:15</OPTION>
<OPTION 
value=18:30>18:30</OPTION>
<OPTION 
value=18:45>18:45</OPTION>
<OPTION 
value=19:00>19:00</OPTION>
<OPTION 
value=19:15>19:15</OPTION>
<OPTION 
value=19:30>19:30</OPTION>
<OPTION 
value=19:45>19:45</OPTION>
<OPTION 
value=20:00>20:00</OPTION>
<OPTION 
value=20:15>20:15</OPTION>
<OPTION 
value=20:30>20:30</OPTION>
<OPTION 
value=20:45>20:45</OPTION>
<OPTION 
value=21:00>21:00</OPTION>
<OPTION 
value=21:15>21:15</OPTION>
<OPTION 
value=21:30>21:30</OPTION>
<OPTION 
value=21:45>21:45</OPTION>
<OPTION 
value=22:00>22:00</OPTION>
<OPTION 
value=22:15>22:15</OPTION>
<OPTION 
value=22:30>22:30</OPTION>
<OPTION 
value=22:45>22:45</OPTION>
<OPTION 
value=23:00>23:00</OPTION>
<OPTION 
value=23:15>23:15</OPTION>
<OPTION 
value=23:30>23:30</OPTION>
<OPTION 
value=23:45>23:45</OPTION>
</SELECT>
		</TR>
			<TR>
	<TD align=right>Drop-off Time&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><SELECT class=font9 
id=select3 name=dropofftime>
<OPTION value=00:00>00:00</OPTION>
<OPTION value=00:15>00:15</OPTION>
<OPTION 
value=00:30>00:30</OPTION>
<OPTION 
value=00:45>00:45</OPTION>
<OPTION 
value=01:00>01:00</OPTION>
<OPTION 
value=01:15>01:15</OPTION>
<OPTION 
value=01:30>01:30</OPTION>
<OPTION 
value=01:45>01:45</OPTION>
<OPTION 
value=02:00>02:00</OPTION>
<OPTION 
value=02:15>02:15</OPTION>
<OPTION 
value=02:30>02:30</OPTION>
<OPTION 
value=02:45>02:45</OPTION>
<OPTION 
value=03:00>03:00</OPTION>
<OPTION 
value=03:15>03:15</OPTION>
<OPTION 
value=03:30>03:30</OPTION>
<OPTION 
value=03:45>03:45</OPTION>
<OPTION 
value=04:00>04:00</OPTION>
<OPTION 
value=04:15>04:15</OPTION>
<OPTION 
value=04:30>04:30</OPTION>
<OPTION 
value=04:45>04:45</OPTION>
<OPTION 
value=05:00>05:00</OPTION>
<OPTION 
value=05:15>05:15</OPTION>
<OPTION 
value=05:30>05:30</OPTION>
<OPTION 
value=05:45>05:45</OPTION>
<OPTION 
value=06:00>06:00</OPTION>
<OPTION 
value=06:15>06:15</OPTION>
<OPTION 
value=06:30>06:30</OPTION>
<OPTION 
value=06:45>06:45</OPTION>
<OPTION 
value=07:00>07:00</OPTION>
<OPTION 
value=07:15>07:15</OPTION>
<OPTION 
value=07:30>07:30</OPTION>
<OPTION 
value=07:45>07:45</OPTION>
<OPTION 
value=08:00>08:00</OPTION>
<OPTION 
value=08:15>08:15</OPTION>
<OPTION 
value=08:30>08:30</OPTION>
<OPTION 
value=08:45>08:45</OPTION>
<OPTION 
value=09:00>09:00</OPTION>
<OPTION 
value=09:15>09:15</OPTION>
<OPTION 
value=09:30>09:30</OPTION>
<OPTION 
value=09:45>09:45</OPTION>
<OPTION 
value=10:00>10:00</OPTION>
<OPTION 
value=10:15>10:15</OPTION>
<OPTION 
value=10:30>10:30</OPTION>
<OPTION 
value=10:45>10:45</OPTION>
<OPTION 
value=11:00>11:00</OPTION>
<OPTION 
value=11:15>11:15</OPTION>
<OPTION 
value=11:30>11:30</OPTION>
<OPTION 
value=11:45>11:45</OPTION>
<OPTION value=12:00 
selected>12:00</OPTION>
<OPTION value=12:15>12:15</OPTION>
<OPTION value=12:30>12:30</OPTION>
<OPTION 
value=12:45>12:45</OPTION>
<OPTION 
value=13:00>13:00</OPTION>
<OPTION 
value=13:15>13:15</OPTION>
<OPTION 
value=13:30>13:30</OPTION>
<OPTION 
value=13:45>13:45</OPTION>
<OPTION 
value=14:00>14:00</OPTION>
<OPTION 
value=14:15>14:15</OPTION>
<OPTION 
value=14:30>14:30</OPTION>
<OPTION 
value=14:45>14:45</OPTION>
<OPTION 
value=15:00>15:00</OPTION>
<OPTION 
value=15:15>15:15</OPTION>
<OPTION 
value=15:30>15:30</OPTION>
<OPTION 
value=15:45>15:45</OPTION>
<OPTION 
value=16:00>16:00</OPTION>
<OPTION 
value=16:15>16:15</OPTION>
<OPTION 
value=16:30>16:30</OPTION>
<OPTION 
value=16:45>16:45</OPTION>
<OPTION 
value=17:00>17:00</OPTION>
<OPTION 
value=17:15>17:15</OPTION>
<OPTION 
value=17:30>17:30</OPTION>
<OPTION 
value=17:45>17:45</OPTION>
<OPTION 
value=18:00>18:00</OPTION>
<OPTION 
value=18:15>18:15</OPTION>
<OPTION 
value=18:30>18:30</OPTION>
<OPTION 
value=18:45>18:45</OPTION>
<OPTION 
value=19:00>19:00</OPTION>
<OPTION 
value=19:15>19:15</OPTION>
<OPTION 
value=19:30>19:30</OPTION>
<OPTION 
value=19:45>19:45</OPTION>
<OPTION 
value=20:00>20:00</OPTION>
<OPTION 
value=20:15>20:15</OPTION>
<OPTION 
value=20:30>20:30</OPTION>
<OPTION 
value=20:45>20:45</OPTION>
<OPTION 
value=21:00>21:00</OPTION>
<OPTION 
value=21:15>21:15</OPTION>
<OPTION 
value=21:30>21:30</OPTION>
<OPTION 
value=21:45>21:45</OPTION>
<OPTION 
value=22:00>22:00</OPTION>
<OPTION 
value=22:15>22:15</OPTION>
<OPTION 
value=22:30>22:30</OPTION>
<OPTION 
value=22:45>22:45</OPTION>
<OPTION 
value=23:00>23:00</OPTION>
<OPTION 
value=23:15>23:15</OPTION>
<OPTION 
value=23:30>23:30</OPTION>
<OPTION 
value=23:45>23:45</OPTION>
</SELECT></tD>
	</TR>
	<TR>
		<TD align=right>Car-Class Preference&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="carclass" size="1" id="carclass">
<option value="SM">Small</option>
<option value="MD">Mid-Size</option>
<option value="PR">Premium</option>
<option value="LX">Luxury</option>
</select></TD>
		</TR>
	<TR>
		<TD align=right>Enter last four digits of your Credit Card No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="cardno" type="text" class=input>
		</TR>

<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Book Car</button>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Carbg.jpg"%>")</SCRIPT>-->


