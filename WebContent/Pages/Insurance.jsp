<%@include file="./Common/Global.jsp"%>
<SCRIPT>
function doClear()
{       
document.mainform.name.value = "";
document.mainform.age.value = "";
document.mainform.sex.value = "";
document.mainform.ticketno.value = "";
document.mainform.inamount.value = "";       
document.mainform.cardno.value = "";
}
function doSubmit()
{
var strErrMsg;         
strErrMsg = "";          
strErrMsg = doValidations();
if (strErrMsg == "" )
{                          
document.mainform.action = "<%=path+"/insuranceconfirm"%>";                      
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
strFld = frmDoc.name
if (strFld.value == "")strErrMsg = strErrMsg + "Please enter the name\n";
strFld = frmDoc.age
if (strFld.value == "") strErrMsg = strErrMsg + "Please enter age\n";
strFld = frmDoc.ticketno
if (strFld.value == "") strErrMsg = strErrMsg + "Please enter ticket no/ Req. no.\n";
strFld = frmDoc.inamount
if (strFld.value == "") strErrMsg = strErrMsg + "Please enter insurance amount\n";
strFld = frmDoc.cardno
if (strFld.value == ""|| strFld.value.length<4 || strFld.value.length >4 ) 
strErrMsg = strErrMsg + "Please enter credit card no\n"; 
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center> Members Insurance Terminal</center></B><BR></TD></TR></TABLE>
<FORM name=mainform method=post action="<%=path+"/login"%>">
<table cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right><font color="white">Name&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="name" type="text" class=input>
		</TR>
		<TR>
			<td align=right><font color="white">Age&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<td><input name=age class=input></TD></TR>
		<TR>
			<TD align=right><font color="white">Sex&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><select name=sex>
          <option value="M" selected>MALE</option>
          <option value="F">FEMALE</option>
        </select></TD></TR>
		<tr><td align=right><font color="white">Travelling means&nbsp;&nbsp;:&nbsp;&nbsp;</font></td>
		<td><select name="tm" id="tm">
			<option value="1" selected>train</option>
			<option value="2">Car</option>
			<option value="3">Flight</option>
			<option value="4">cruise</option>
			</select></td>
		</tr>
		<TR>
			<TD align=right><font color="white">Ticket no./Req no.(First Three Digits)&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="ticketno" type="text" class=input>
		</TR>
	<TR>
			<TD align=right><font color="white">Insurance Amount&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="inamount" type="text" class=input>
		</TR>
	<TR>
			<TD align=right><font color="white">Enter last four digits of your Credit Card No.&nbsp;&nbsp;:&nbsp;&nbsp;</font></TD>
			<TD><input name="cardno" type="text" class=input>
		</TR>
<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Get Insurance</button>
</TD></TR></tABLE></form>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Balcony.jpg"%>")</SCRIPT>


