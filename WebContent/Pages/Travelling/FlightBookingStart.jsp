<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doEnable()
{
if(document.mainform.type.value=="RT")
{
document.mainform.ddd.disabled = false;
document.mainform.dmm.disabled = false;
document.mainform.dyy.disabled = false;
}
else
{
document.mainform.ddd.disabled = true;
document.mainform.dmm.disabled = true;
document.mainform.dyy.disabled = true;
}
}
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/FlightSearch"%>";				
document.mainform.submit();
}
else
{
alert(strErrMsg);
}
}
function doValidations()
{
var ddIndex;
var strTemp;
var strFld;
var frmDoc;
var strErrMsg="";

frmDoc = document.mainform;			
strFld = frmDoc.source
strTemp = frmDoc.destination
if (strFld.value == strTemp.value) strErrMsg = strErrMsg + " Source and destination cant be same\n";
//strErrMsg="..";
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Travel Management</center></B><BR></TD></TR></TABLE>
<FORM name=mainform method=post>
<table cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<%System.out.println(request.getParameter("type")); %>
		<TR>
			<td align=right>Departure From&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td> <select name="source" id="source">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="ID">Indore</option>
<option value="LKO">Lucknow</option>
<option value="RC">Ranchi</option>
<option value="FZD">Faizabad</option>
<option value="HYDRABAD">Hydrabad</option>
</select></TD></TR>
		<TR>
			<td align=right>Arrival To&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="destination" id="destination">
<option value="ND">New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH" selected>Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="ID">Indore</option>
<option value="LKO">Lucknow</option>
<option value="RC">Ranchi</option>
<option value="FZD">Faizabad</option>
<option value="HYDRABAD">Hydrabad</option>
</select></TD>
		</TR>
			<TR>
		<TD align=right>Type&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="type" id="type" onChange="javascript:doEnable();">
<option value="RT">Round Trip</option>
<option value="OW" selected>One Way</option>
</select> </TD>
		</TR>

	
<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Search Flights</button>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Flightbg.jpg"%>")</SCRIPT>-->


