<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doClear()
{       
document.mainform.trainno.value ="";
document.mainform.not.value = "";
document.mainform.trainno.value = "";
document.mainform.cardno.value = "";
}
function doSubmit()
{
var strErrMsg;         
strErrMsg = "";          
strErrMsg = doValidations();
if (strErrMsg == "" )
{                          
document.mainform.action = "<%=path+"/bookingconfirm"%>";                
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
strFld = frmDoc.loginid
if (strFld.value == "")                  
strErrMsg = strErrMsg + "Please enter the customer ID\n";    
strFld = frmDoc.not
if (strFld.value == "") strErrMsg = strErrMsg + "Please enter no of tickets\n";
strFld = frmDoc.trainno
if (strFld.value == "") strErrMsg = strErrMsg + "Please enter train no\n";
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
<table  align=left cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input value="<%=user%>">
		</TR>
		<TR>
			<td align=right>Departure From&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="source" id="source">
<OPTION value=ABR>ABU ROAD - ABR 
<OPTION value=AGC>AGRA CANTT - AGC 
<OPTION value=AF>AGRA FORT - AF 
<OPTION value=AGA>AGRA CITY - AGA 
<OPTION value=ADI>AHMEDABAD JN - ADI 
<OPTION value=AII>AJMER - AII 
<OPTION value=AK>AKOLA - AK 
<OPTION value=ALJN>ALIGARH JN - ALJN 
<OPTION value=ALD>ALLAHABAD - ALD 
<OPTION value=ALLP>ALLEPPEY - ALLP 
<OPTION value=AWR>ALWAR - AWR 
<OPTION value=AWY>ALWAYE - AWY 
<OPTION 
value=UMB>AMBALA - UMB 
<OPTION value=AME>AMETHI - AME 
<OPTION 
value=AMI>AMRAVATI - AMI 
<OPTION value=ASR>AMRITSAR - ASR 
<OPTION 
value=ASN>ASANSOL JN - ASN 
<OPTION value=AWB>AURANGABAD - AWB 
<OPTION 
value=AMH>AZAMGARH - AMH 
<OPTION value=BRK>BAHRAICH - BRK 
<OPTION 
value=SBC>BANGALORE - SBC 
<OPTION value=BUI>BALLIA - BUI 
<OPTION 
value=BWT>BANGARAPET - BWT 
<OPTION value=BP>BARRACKPORE - BP 
<OPTION 
value=BJU>BARAUNI JN - BJU 
<OPTION value=BE>BAREILLY - BE 
<OPTION 
value=BST>BASTI - BST 
<OPTION value=BSL>BHUSAVAL - BSL 
<OPTION 
value=BGS>BEGU SARAI - BGS 
<OPTION value=BGM>BELGAUM - BGM 
<OPTION 
value=BAY>BELLARY - BAY 
<OPTION value=BGP>BHAGALPUR - BGP 
<OPTION 
value=BKN>BIKANER JN - BKN 
<OPTION value=BSP>BILASPUR - BSP 
<OPTION 
value=BINA>BINA - BINA 
<OPTION value=BPL>BHOPAL - BPL 
<OPTION 
value=BTI>BHATINDA - BTI 
<OPTION value=BKSC>BOKARO STL CITY - BKSC 
<OPTION 
value=BBS>BHUBANESHWAR - BBS 
<OPTION value=BWN>BURDWAN - BWN 
<OPTION 
value=BXR>BUXAR - BXR 
<OPTION value=CLT>CALICUT - CLT 
<OPTION 
value=CDG>CHANDIGARH - CDG 
<OPTION value=MAS>CHENNAI - MAS 
<OPTION 
value=CHTS>COCHIN - CHTS 
<OPTION value=CRJ>CHITTARANJAN - CRJ 
<OPTION 
value=CBE>COIMBATORE JN - CBE 
<OPTION value=DBG>DARBHANGA JN - DBG 
<OPTION 
value=DJ>DARJEELING - DJ 
<OPTION value=DDN>DEHRADUN - DDN 
<OPTION 
value=DHN>DHANBAD JN - DHN 
<OPTION value=DWR>DHARWAR - DWR 
<OPTION 
value=DURG>DURG - DURG 
<OPTION value=DBRT>DIBRUGARH TOWN - DBRT 
<OPTION 
value=ERS>ERNAKULAM - ERS 
<OPTION value=ED>ERODE - ED 
<OPTION 
value=FD>FAIZABAD JN - FD 
<OPTION value=FDB>FARIDABAD - FDB 
<OPTION 
value=FBD>FARUKHABAD - FBD 
<OPTION value=GAYA>GAYA JN - GAYA 
<OPTION 
value=G>GONDIA - G 
<OPTION value=GKP>GORAKHPUR JN - GKP 
<OPTION 
value=GR>GULBARGA - GR 
<OPTION value=GNT>GUNTUR - GNT 
<OPTION 
value=GHY>GUWAHATI - GHY 
<OPTION value=GWL>GWALIOR - GWL 
<OPTION 
value=HBJ>HABIBGANJ - HBJ 
<OPTION value=HW>HARIDWAR JN - HW 
<OPTION 
value=HWH>HOWRAH - HWH 
<OPTION value=HYB>HYDERABAD - HYB 
<OPTION 
value=INDB>INDORE JN BG - INDB 
<OPTION value=ET>ITARSI - ET 
<OPTION 
value=JBP>JABALPUR - JBP 
<OPTION value=JP>JAIPUR - JP 
<OPTION 
value=JSM>JAISALMER - JSM 
<OPTION value=JUC>JALANDHAR CITY - JUC 
<OPTION 
value=JAT>JAMMU - JAT 
<OPTION value=JHS>JHANSI JN - JHS 
<OPTION 
value=JU>JODHPUR - JU 
<OPTION value=KLK>KALKA - KLK 
<OPTION 
value=CNB>KANPUR - CNB 
<OPTION value=CAPE>KANYAKUMARI - CAPE 
<OPTION 
value=KGM>KATHGODAM - KGM 
<OPTION value=KPD>KATPADI - KPD 
<OPTION 
value=HWH>KOLKATA - HWH 
<OPTION value=KOTA>KOTA JN - KOTA 
<OPTION 
value=KTYM>KOTTAYAM - KTYM 
<OPTION value=KZJ>KAZIPET - KZJ 
<OPTION 
value=LKO>LUCKNOW - LKO 
<OPTION value=LDH>LUDHIANA - LDH 
<OPTION 
value=MAO>MADGAON - MAO 
<OPTION value=MDU>MADURAI - MDU 
<OPTION 
value=MMC>MAHAMANDIR - MMC 
<OPTION value=MAQ>MANGALORE - MAQ 
<OPTION 
value=MMR>MANMAD - MMR 
<OPTION value=MTJ>MATHURA JN - MTJ 
<OPTION 
value=MAU>MAU JN - MAU 
<OPTION value=MTC>MEERUT CITY - MTC 
<OPTION 
value=MB>MORADABAD - MB 
<OPTION value=MGS>MUGHAL SARAI - MGS 
<OPTION 
value=BCT>MUMBAI - BCT 
<OPTION value=MYS>MYSORE - MYS 
<OPTION 
value=NGP>NAGPUR - NGP 
<OPTION value=NK>NASIK - NK 
<OPTION 
value=NLR>NELLORE - NLR 
<OPTION value=NJP>NEW JALPAIGURI - NJP 
<OPTION 
selected value=NDLS>NEW DELHI - NDLS 
<OPTION value=PGT>PALGHAT - PGT 
<OPTION value=PNP>PANIPAT JN - PNP 
<OPTION value=PTA>PATIALA - PTA 
<OPTION value=PNBE>PATNA JN - PNBE 
<OPTION value=PUNE>PUNE JN - PUNE 
<OPTION value=PTBY>PUTTAPARTHI OA - PTBY 
<OPTION value=RBL>RAE BARELI JN - RBL 
<OPTION value=RIG>RAIGARH - RIG 
<OPTION value=R>RAIPUR - R 
<OPTION 
value=RMM>RAMESWARAM - RMM 
<OPTION value=RNC>RANCHI - RNC 
<OPTION 
value=RRME>RANCHI ROAD - RRME 
<OPTION value=RTM>RATLAM - RTM 
<OPTION 
value=RN>RATNAGIRI - RN 
<OPTION value=REWA>REWA - REWA 
<OPTION 
value=ROK>ROHTAK - ROK 
<OPTION value=RKSH>RISHIKESH - RKSH 
<OPTION 
value=RK>ROORKEE - RK 
<OPTION value=ROU>ROURKELA - ROU 
<OPTION 
value=SRE>SAHARANPUR - SRE 
<OPTION value=SA>SALEM - SA 
<OPTION 
value=SLI>SANGLI - SLI 
<OPTION value=STA>SATNA - STA 
<OPTION 
value=SNP>SONIPAT - SNP 
<OPTION value=SCL>SILCHAR - SCL 
<OPTION 
value=SML>SIMLA - SML 
<OPTION value=SVKS>SIVAKASI - SVKS 
<OPTION 
value=ST>SURAT - ST 
<OPTION value=TATA>TATANAGAR JN - TATA 
<OPTION 
value=TNA>THANE - TNA 
<OPTION value=TJ>THANJAVUR - TJ 
<OPTION 
value=TPTY>TIRUPATI - TPTY 
<OPTION value=TPJ>TIRUCHIRAPALLI - TPJ 
<OPTION 
value=TCR>TRICHUR - TCR 
<OPTION value=TVC>TRIVANDRUM - TVC 
<OPTION 
value=TN>TUTICORIN - TN 
<OPTION value=UDZ>UDAIPUR - UDZ 
<OPTION 
value=UJN>UJJAIN - UJN 
<OPTION value=BRC>VADODARA - BRC 
<OPTION 
value=BSB>VARANASI JN - BSB 
<OPTION value=VSG>VASCO DA GAMA - VSG 
<OPTION 
value=BZA>VIJAYAWADA JN - BZA 
<OPTION value=VSKP>VISHAKAPATNAM - VSKP 
<OPTION value=WL>WARANGAL - WL 
<OPTION value=WR>WARDHA - WR</OPTION>
</SELECT></TD></TR>
		<TR>
			<TD align=right>Arrival To&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="destination" id="destination">
<OPTION 
value=ABR>ABU ROAD - ABR 
<OPTION value=AGC>AGRA CANTT - AGC 
<OPTION 
value=AF>AGRA FORT - AF 
<OPTION value=AGA>AGRA CITY - AGA 
<OPTION 
value=ADI>AHMEDABAD JN - ADI 
<OPTION value=AII>AJMER - AII 
<OPTION 
value=AK>AKOLA - AK 
<OPTION value=ALJN>ALIGARH JN - ALJN 
<OPTION 
value=ALD>ALLAHABAD - ALD 
<OPTION value=ALLP>ALLEPPEY - ALLP 
<OPTION 
value=AWR>ALWAR - AWR 
<OPTION value=AWY>ALWAYE - AWY 
<OPTION 
value=UMB>AMBALA - UMB 
<OPTION value=AME>AMETHI - AME 
<OPTION 
value=AMI>AMRAVATI - AMI 
<OPTION value=ASR>AMRITSAR - ASR 
<OPTION 
value=ASN>ASANSOL JN - ASN 
<OPTION value=AWB>AURANGABAD - AWB 
<OPTION 
value=AMH>AZAMGARH - AMH 
<OPTION value=BRK>BAHRAICH - BRK 
<OPTION 
value=SBC>BANGALORE - SBC 
<OPTION value=BUI>BALLIA - BUI 
<OPTION 
value=BWT>BANGARAPET - BWT 
<OPTION value=BP>BARRACKPORE - BP 
<OPTION 
value=BJU>BARAUNI JN - BJU 
<OPTION value=BE>BAREILLY - BE 
<OPTION 
value=BST>BASTI - BST 
<OPTION value=BSL>BHUSAVAL - BSL 
<OPTION 
value=BGS>BEGU SARAI - BGS 
<OPTION value=BGM>BELGAUM - BGM 
<OPTION 
value=BAY>BELLARY - BAY 
<OPTION value=BGP>BHAGALPUR - BGP 
<OPTION 
value=BKN>BIKANER JN - BKN 
<OPTION value=BSP>BILASPUR - BSP 
<OPTION 
value=BINA>BINA - BINA 
<OPTION value=BPL>BHOPAL - BPL 
<OPTION 
value=BTI>BHATINDA - BTI 
<OPTION value=BKSC>BOKARO STL CITY - BKSC 
<OPTION 
value=BBS>BHUBANESHWAR - BBS 
<OPTION value=BWN>BURDWAN - BWN 
<OPTION 
value=BXR>BUXAR - BXR 
<OPTION value=CLT>CALICUT - CLT 
<OPTION 
value=CDG>CHANDIGARH - CDG 
<OPTION value=MAS>CHENNAI - MAS 
<OPTION 
value=CHTS>COCHIN - CHTS 
<OPTION value=CRJ>CHITTARANJAN - CRJ 
<OPTION 
value=CBE>COIMBATORE JN - CBE 
<OPTION value=DBG>DARBHANGA JN - DBG 
<OPTION 
value=DJ>DARJEELING - DJ 
<OPTION value=DDN>DEHRADUN - DDN 
<OPTION 
value=DHN>DHANBAD JN - DHN 
<OPTION value=DWR>DHARWAR - DWR 
<OPTION 
value=DURG>DURG - DURG 
<OPTION value=DBRT>DIBRUGARH TOWN - DBRT 
<OPTION 
value=ERS>ERNAKULAM - ERS 
<OPTION value=ED>ERODE - ED 
<OPTION 
value=FD>FAIZABAD JN - FD 
<OPTION value=FDB>FARIDABAD - FDB 
<OPTION 
value=FBD>FARUKHABAD - FBD 
<OPTION value=GAYA>GAYA JN - GAYA 
<OPTION 
value=G>GONDIA - G 
<OPTION value=GKP>GORAKHPUR JN - GKP 
<OPTION 
value=GR>GULBARGA - GR 
<OPTION value=GNT>GUNTUR - GNT 
<OPTION 
value=GHY>GUWAHATI - GHY 
<OPTION value=GWL>GWALIOR - GWL 
<OPTION 
value=HBJ>HABIBGANJ - HBJ 
<OPTION value=HW>HARIDWAR JN - HW 
<OPTION 
value=HWH>HOWRAH - HWH 
<OPTION value=HYB>HYDERABAD - HYB 
<OPTION 
value=INDB>INDORE JN BG - INDB 
<OPTION value=ET>ITARSI - ET 
<OPTION 
value=JBP>JABALPUR - JBP 
<OPTION value=JP>JAIPUR - JP 
<OPTION 
value=JSM>JAISALMER - JSM 
<OPTION value=JUC>JALANDHAR CITY - JUC 
<OPTION 
value=JAT>JAMMU - JAT 
<OPTION value=JHS>JHANSI JN - JHS 
<OPTION 
value=JU>JODHPUR - JU 
<OPTION value=KLK>KALKA - KLK 
<OPTION 
value=CNB>KANPUR - CNB 
<OPTION value=CAPE>KANYAKUMARI - CAPE 
<OPTION 
value=KGM>KATHGODAM - KGM 
<OPTION value=KPD>KATPADI - KPD 
<OPTION 
value=HWH>KOLKATA - HWH 
<OPTION value=KOTA>KOTA JN - KOTA 
<OPTION 
value=KTYM>KOTTAYAM - KTYM 
<OPTION value=KZJ>KAZIPET - KZJ 
<OPTION 
value=LKO>LUCKNOW - LKO 
<OPTION value=LDH>LUDHIANA - LDH 
<OPTION 
value=MAO>MADGAON - MAO 
<OPTION value=MDU>MADURAI - MDU 
<OPTION 
value=MMC>MAHAMANDIR - MMC 
<OPTION value=MAQ>MANGALORE - MAQ 
<OPTION 
value=MMR>MANMAD - MMR 
<OPTION value=MTJ>MATHURA JN - MTJ 
<OPTION 
value=MAU>MAU JN - MAU 
<OPTION value=MTC>MEERUT CITY - MTC 
<OPTION 
value=MB>MORADABAD - MB 
<OPTION value=MGS>MUGHAL SARAI - MGS 
<OPTION 
selected value=BCT>MUMBAI - BCT 
<OPTION value=MYS>MYSORE - MYS 
<OPTION 
value=NGP>NAGPUR - NGP 
<OPTION value=NK>NASIK - NK 
<OPTION 
value=NLR>NELLORE - NLR 
<OPTION value=NJP>NEW JALPAIGURI - NJP 
<OPTION 
value=NDLS>NEW DELHI - NDLS 
<OPTION value=PGT>PALGHAT - PGT 
<OPTION 
value=PNP>PANIPAT JN - PNP 
<OPTION value=PTA>PATIALA - PTA 
<OPTION 
value=PNBE>PATNA JN - PNBE 
<OPTION value=PUNE>PUNE JN - PUNE 
<OPTION 
value=PTBY>PUTTAPARTHI OA - PTBY 
<OPTION value=RBL>RAE BARELI JN - RBL 
<OPTION value=RIG>RAIGARH - RIG 
<OPTION value=R>RAIPUR - R 
<OPTION 
value=RMM>RAMESWARAM - RMM 
<OPTION value=RNC>RANCHI - RNC 
<OPTION 
value=RRME>RANCHI ROAD - RRME 
<OPTION value=RTM>RATLAM - RTM 
<OPTION 
value=RN>RATNAGIRI - RN 
<OPTION value=REWA>REWA - REWA 
<OPTION 
value=ROK>ROHTAK - ROK 
<OPTION value=RKSH>RISHIKESH - RKSH 
<OPTION 
value=RK>ROORKEE - RK 
<OPTION value=ROU>ROURKELA - ROU 
<OPTION 
value=SRE>SAHARANPUR - SRE 
<OPTION value=SA>SALEM - SA 
<OPTION 
value=SLI>SANGLI - SLI 
<OPTION value=STA>SATNA - STA 
<OPTION 
value=SNP>SONIPAT - SNP 
<OPTION value=SCL>SILCHAR - SCL 
<OPTION 
value=SML>SIMLA - SML 
<OPTION value=SVKS>SIVAKASI - SVKS 
<OPTION 
value=ST>SURAT - ST 
<OPTION value=TATA>TATANAGAR JN - TATA 
<OPTION 
value=TNA>THANE - TNA 
<OPTION value=TJ>THANJAVUR - TJ 
<OPTION 
value=TPTY>TIRUPATI - TPTY 
<OPTION value=TPJ>TIRUCHIRAPALLI - TPJ 
<OPTION 
value=TCR>TRICHUR - TCR 
<OPTION value=TVC>TRIVANDRUM - TVC 
<OPTION 
value=TN>TUTICORIN - TN 
<OPTION value=UDZ>UDAIPUR - UDZ 
<OPTION 
value=UJN>UJJAIN - UJN 
<OPTION value=BRC>VADODARA - BRC 
<OPTION 
value=BSB>VARANASI JN - BSB 
<OPTION value=VSG>VASCO DA GAMA - VSG 
<OPTION 
value=BZA>VIJAYAWADA JN - BZA 
<OPTION value=VSKP>VISHAKAPATNAM - VSKP 
<OPTION value=WL>WARANGAL - WL 
<OPTION value=WR>WARDHA - WR</OPTION>
</SELECT></TD></TR>
		<tr><td align=right>Departure Date&nbsp;&nbsp;:&nbsp;&nbsp;</td>
		<td><input name="departuredate" id="departuredate"type="date"class=input></td>
		</tr>
		<TR>
			<TD align=right>No.of Tickets&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="not" type="text" class=input></TD></TR>
	<TR>
			<TD align=right>No.of Children Below 5 yrs.&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="noc" type="text" id="noc" class=input></TD>
		</TR>
	<TR>
			<TD align=right>Class&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><SELECT name=class size=1 id="class">
<OPTION 
value=ZZ>All Class 
<OPTION value=1A>First AC 
<OPTION value=2A>Second AC 
<OPTION value=3A>Third AC 
<OPTION value=CC>AC Chair Car 
<OPTION 
value=FC>First Class 
<OPTION selected value=SL>Sleeper Class 
<OPTION 
value=2S>Second Seating</OPTION>
</SELECT></tD>
	</TR>
	<TR>
		<TD align=right>Train No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="trainno" type="text" id="trainno" class=input></TD>
		</TR>
	<TR>
		<TD align=right>Enter last four digits of your Credit Card No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="cardno" type="text" class=input>
		</TR>

<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Book Berths</button>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Trainbg.jpg"%>")</SCRIPT>-->


