<%@include file="../Common/Global.jsp"%>
<SCRIPT>
	function doClear()
		{		 
		  	document.mainform.amount.value = "";
		}
   function doQuit()
		{		 
		  document.mainform.action = "home"  ; 
		  document.mainform.submit();
		}
  function doSubmit()
		{
			var strErrMsg;			
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{							
				document.mainform.action = "<%=path+"/currencyconversion"%>"; 				
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
			strFld = frmDoc.amount
			if (strFld.value == "") 			         			
			strErrMsg = strErrMsg + "Please enter the amount\n";
			return strErrMsg;
		}
</SCRIPT>
<p align="center"><strong><font size="6" color="#990000"><u>currency 
  convertor </u></font></strong></p>
<table width="580" height="186" border="0" cellpadding="1" cellspacing="0"><FORM name=mainform method=post>
  <tr bgcolor=#234567>
	<th>Convert this amount</th>
    <th>of this type of currency</th>
    <th>into this type of currency</th>
  </tr>
  <tr> 
    <td><input name="amount" type="text" class=input value="1"><BR><BR>Enter any amount</td>
    <td> 
        <select name="source" size="1" id="source">
          <option value="1" selected>GBP United Kingdom Pounds</option>
          <option value="2">JPY Japan Yen</option>
          <option value="3">ITL Italy Lire</option>
          <option value="4">Aud Austrlian Dollars</option>
          <option value="5">CAD Canada Dollars</option>
          <option value="6">USD United staes Dollars Dollars</option>
          <option value="7">NZD Newzeeland Dollars</option>
        </select><Br><BR>scroll down to see more currencies</td>
    <td>INR Indian Ruppes</td>
  </tr>
  <tr> 
<TR>
<Td colspan=3 align=center><button onclick=doSubmit();>Convert</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>


</TD></TR></TABLE>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Balcony.jpg"%>")</SCRIPT>


