<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/hotelconfirm"%>";				
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
strFld1 =frmDoc.checkindate
strFld2 =frmDoc.checkoutdate
if(strFld1.value>strFld2.value)
	strErrMsg = strErrMsg + " Check in Date is Greater than Check out date\n";
	return strErrMsg;
if (strFld.value == ""|| strFld.value.length<4 || strFld.value.length >4 ) 		
strErrMsg = strErrMsg + " Credit Crad No. is Invalid\n";
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR><font color="white">Search&nbsp;:&nbsp;</font><input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Hotel Booking or Lodging</center></B><BR></TD></TABLE>
	<table cellspacing=0 cellpadding=4><FORM name=mainform method=post action=<%=path+"/login"%>>
		<TR>
			<TD align=right><font color="white">Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="loginid" type="text" id="loginid" value="<%=user%>" class=input>
		</TR>
		<TR>
			<td align=right><font color="white">Type of Accomodation&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<td><select name="type" id="type" class=select>
					<option value="GH">Guest house</option>
					<option value="1S">1 Star Hotel</option>
					<option value="23S">2/3 Star Hotel</option>
					<option value="5S">5 Star Hotel</option>
					<option value="PG">P.G Accomodation</option>
				</select>
			</TD></TR>
		<TR>
			<td align=right><font color="white">Check In Date&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="checkindate" id="checkindate" type="date" class=input>
</td>
</tr>
<TR>
    <td align=right><font color="white">Check Out Date&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
    <TD><input name="checkoutdate" id="checkoutdate" type="date" class=input>
</td>
</tr>
<TR><td align=right><font color="white">Hotel Destination&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
<td><select name="dest" id="dest" class=input>
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="AH">Ahmedabad</option>
<option value="HD">Hydrebad</option>
<option value="ID">Indore</option>
<option value="RC">Ranchi</option>
</select></td>
</tr>
<TR><td align=right><font color="white">No.of Rooms&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
<td><select name="rooms" id="rooms">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select></td>
</tr>
<TR><td align=right><font color="white">No.of Children&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
<td><input type=text name="children" id="children">
</td></tr>
<TR><td align=right><font color="white">Last 4 digits of Your Credit Card No.&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
<TD><input name="cardno" type="password" id="cardno" size="8" maxlength="4" class=input></tD></TR>
<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Book Now</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Balcony.jpg"%>")</SCRIPT>


