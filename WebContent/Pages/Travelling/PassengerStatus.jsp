<%@include file="../Common/Global.jsp"%>
<SCRIPT>
	function doClear()
		{		 
		  	document.mainform.pnr.value = "";
		  	 
		}
  function doSubmit()
		{
			var strErrMsg;			
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{							
				document.mainform.action = "<%=path+"/status"%>";
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
			var valid = "0123456789";
			var ok = "yes";
			var temp;
			strErrMsg = "";
			frmDoc = document.mainform;			
			strFld = frmDoc.pnr
			if (strFld.value == "") 			        			
			    strErrMsg = strErrMsg + "Please enter valid pnr number\n";
			else
			{	
			for (var i=0; i<strFld.value.length; i++) {
               temp = "" + strFld.value.substring(i, i+1);
            if (valid.indexOf(temp) == "-1") ok = "no";
             }
             if (ok == "no") {
               strErrMsg = strErrMsg + "Invalid entry! only numbers are accepted in pnr no.!\n";
               strFld.value="";
		    }		
				}						
			 
			
			if(strFld.value=="") 
			        strErrMsg = strErrMsg + "Please enter valid pnr number\n";					
			else if((strFld.value ==""  ) ||(strFld.value !=""  ))
			{	
			for (var i=0; i<strFld.value.length; i++) {
               temp = "" + strFld.value.substring(i, i+1);
            if (valid.indexOf(temp) == "-1") ok = "no";
             }
             if (ok == "no") {
               strErrMsg = strErrMsg + "Invalid entry! only numbers are accepted in pnr no.!\n";
               strFld.value="";
		    }		
				}			
			return strErrMsg;
		}
</SCRIPT>


<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">
<TR><Td><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th bgcolor=#304958>Passenger Status</TH></TR>
<TR><Th bgcolor=#304958><FORM name=mainform method=post>
	<table width=560 cellspacing=0 cellpadding=4 bgcolor=white>
		<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR><TD align=right>Enter PNR Number:</TD><TD><INPUT name=pnr maxlength=8 class=input> 
<TR><Td colspan=2 align=center><button onclick=doSubmit();>Get Status</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>


</TD></TR></TABLE>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Trainbg.jpg"%>")</SCRIPT>-->


