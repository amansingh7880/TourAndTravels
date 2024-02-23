<%@include file="../Common/Global.jsp"%>
<SCRIPT>

function doEnable()
{
if(document.mainform.type.value=="OW")
{
document.mainform.returndate.disabled = false;
}
else
{
document.mainform.returndate.disabled = true;
}
}
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidation();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/flightbooking"%>";				
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
strFld = frmDoc.source
strTemp = frmDoc.destination

strFld = frmDoc.not
if (strFld.value == "" ) strErrMsg = strErrMsg + " Number of tickets is incorrect\n";
strFld = frmDoc.type
if (strFld.value == "RT") 
{	
if(frmDoc.syy.value<=frmDoc.dyy.value)
{
if(frmDoc.smm.value<=frmDoc.dmm.value)
{
if(frmDoc.sdd.value>frmDoc.ddd.value)
strErrMsg = strErrMsg + " Date is Incorrect\n";
}
else
strErrMsg = strErrMsg + " Date is Incorrect\n";
}
else
strErrMsg = strErrMsg + " Date is Incorrect\n";
}
strFld = frmDoc.cardno
if (strFld.value == "" || strFld.value.length<4) 		
strErrMsg = strErrMsg + " Credit Crad No. is Invalid\n";
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Travel Management</center></B><BR></TD></TR></TABLE>
<%String s1= request.getParameter("Flightno"); %>
<FORM name=mainform method=post action="<%=path+"/flightbooking?Flightno="+s1%>">
<table cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
		String type1=request.getParameter("type");
		System.out.println("Type" +request.getParameter("type"));
		session.setAttribute("type", request.getParameter("type"));
	%>
<TR>
	<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input value="<%=user%>">
		</TR>
		<TR>
			<td align=right>Departure From&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td> <select name="source" id="source" value =>
			<%String s= request.getParameter("s");
				String d = request.getParameter("d");
			%>
<%out.println("<option value='"+s+"' selected>"+s+"</option>");%>
</select></TD></TR>
		<TR>
			<td align=right>Arrival To&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="destination" id="destination">
<%out.println("<option value='"+d+"'>"+d+"</option>");%>
</select></TD>
		</TR>
		<tr><td align=right>Departure Date&nbsp;&nbsp;:&nbsp;&nbsp;</td>
		<td><input name="departuredate" id="departuredate" type="date" class=input></td>
		</tr>
		<TR>
			<TD align=right>No.of Tickets&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="not" type="text" class=input></TD></TR>
	<TR>
			<TD align=right>Class&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="class" id="class">
<option value="EC" selected>Economy</option>
<option value="BS">Business</option>
<option value="FS">First</option>
</select> </tD>
	</TR>
	
	<TR>
		<TD align=right>Return Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD>
			<%
			System.out.println("ttt:"+type1);
		    if(type1.equals("OW"))
			out.println("<input name='returndate' type='date' class=input disabled>");
		    if(type1.equals("RT"))
				out.println("<input name='returndate' type='date' class=input>");
            %>
            </TD>
		</TR>

	<TR>
		<TD align=right>Enter your Credit Card No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="cardno" type="text" class=input>
		</TR>

<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Book Flight</button>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Flightbg.jpg"%>")</SCRIPT>-->


