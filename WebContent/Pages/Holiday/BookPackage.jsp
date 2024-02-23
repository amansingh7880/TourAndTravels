<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/pckgbooking"%>";				
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
strFld = frmDoc.pckgid
if (strFld.value == "" || strFld.value.length<4) 		
strErrMsg = strErrMsg + " Package ID is Invalid\n";
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
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Travel Management</center></B><BR>
<FORM name=mainform method=post action="<%=path+"/holidaypackage"%>">
<table width=500 align=center cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right>Login Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input value="<%=user%>" >
		</TR>
		<TR>
			<td align=right>Package Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><input name="pckgid" class="input" value="<%=(request.getParameter("package")!=null?request.getParameter("package"):"")%>" readonly></TD></TR>
		<TR>
			<TD align=right>Departure Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="sdd" id="sdd">
<option value="1">01</option>
<option value="2">02</option>
<option value="3">03</option>
<option value="4">04</option>
<option value="5">05</option>
<option value="6">06</option>
<option value="7">07</option>
<option value="8">08</option>
<option value="9">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21" selected>21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="smm" id="smm">
<option value="1">JAN</option>
<option value="2">FEB</option>
<option value="3">MAR</option>
<option value="4">APR</option>
<option value="5">MAY</option>
<option value="6">JUN</option>
<option value="7">JUL</option>
<option value="8">AUG</option>
<option value="9">SEP</option>
<option value="10">OCT</option>
<option value="11" selected>NOV</option>
<option value="12">DEC</option>
</select>
<select name="syy" id="syy">
<option value="04" selected>2004</option>
<option value="05">2005</option>
<option value="06">2006</option>
<option value="07">2007</option>
<option value="08">2008</option>
<option value="09">2009</option>
<option value="10">2010</option>
<option value="10">2011</option>
<option value="10">2012</option>
<option value="10">2013</option>
<option value="10">2014</option>
<option value="10">2015</option>
<option value="10">2016</option>
<option value="10">2017</option>
<option value="10">2018</option>
<option value="10">2019</option>
<option value="10">2020</option>
<option value="10">2021</option>
<option value="10">2022</option>


</select></TD></TR>
		<tr><td align=right>Departure From&nbsp;&nbsp;:&nbsp;&nbsp;</td>
		<td><select name="source" id="source">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="ID">Indore</option>
<option value="LK">Lucknow</option>
<option value="RC">Ranchi</option>
</select></td>
		</tr>
		<TR>
			<TD align=right>Return Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="ddd" id="ddd">
<option value="1">01</option>
<option value="2">02</option>
<option value="3">03</option>
<option value="4">04</option>
<option value="5">05</option>
<option value="6">06</option>
<option value="7">07</option>
<option value="8">08</option>
<option value="9">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21" selected>21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="dmm" id="dmm">
<option value="1">JAN</option>
<option value="2">FEB</option>
<option value="3">MAR</option>
<option value="4">APR</option>
<option value="5">MAY</option>
<option value="6">JUN</option>
<option value="7">JUL</option>
<option value="8">AUG</option>
<option value="9">SEP</option>
<option value="10">OCT</option>
<option value="11" selected>NOV</option>
<option value="12">DEC</option>
</select>
<select name="dyy" id="dyy">
<option value="04" selected>2004</option>
<option value="05">2005</option>
<option value="07">2007</option>
<option value="08">2008</option>
<option value="09">2009</option>
<option value="10">2010</option>
<option value="10">2011</option>
<option value="10">2012</option>
<option value="10">2013</option>
<option value="10">2014</option>
<option value="10">2015</option>
<option value="10">2016</option>
<option value="10">2017</option>
<option value="10">2018</option>
<option value="10">2019</option>
<option value="10">2020</option>
<option value="10">2021</option>
<option value="10">2022</option>

</select>
		</TR>
	<TR>
			<TD align=right>Booking&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD>Hotel Booking&nbsp;<input type="checkbox" name="checkbox" value="checkbox"><strong>&nbsp;&nbsp;&nbsp; 
			Car Booking <input type="checkbox" name="checkbox2" value="checkbox">
	</TR>
<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Get Package</button>
</TD></TR></tABLE></form>
</TD></TR></TABLE>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.jpg"%>")</SCRIPT>-->


