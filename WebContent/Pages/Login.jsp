<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
%>
<LINK HREF="<%=path+"/Styles/Travel.css"%>" REL="STYLESHEET">
<BODY LEFTMARGIN=0 TOPMARGIN=0>
<TABLE WIDTH=780 align=center cellspacing=0 cellpadding=0>
<TR><TD valign=top>
                    <img style="position:relative;top:-20px;left:0px;" valign=top src="<%=path+"/Images/Animsun.gif"%>" width="40" height="26">
					<img src="<%=path+"/Images/travango.png"%>" alt="" width="660" height="79">					
					<img src="<%=path+"/Images/animated.gif"%>" width="67"  valign=top style="position:relative;top:-20px"></TD></TR></TABLE>
<SCRIPT SRC="<%=path+"/Scripts/Menubar.js"%>"></SCRIPT>
<TABLE WIDTH=780 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">

<TR bgcolor=#234567><TH valign=top width=150>Quick Links</TH><TH width=400><marquee direction=right>Travel Management</marquee></TH><TH width=230><a href="" class=caption>Visit India on Your Requirements</a></TH></TR></TABLE>
<TABLE width=780 align=center cellspacing=0 cellpadding=0><TR><TD>
<SCRIPT>
quickLinks("<%=path+"/Pages/"%>","<%=path+"/Images/Anniversary1.jpg"%>","<%=path+"/Images/trivendrum.jpg"%>");
</SCRIPT></TD><TD valign=top>
 <TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<br>
<br>
<br>
<br>
<br>
<TR><Th bgcolor=#234567><BR><B><center>Travel Management</center></B><BR>
<FORM name=mainform method=post action="<%=path+"/login"%>">
<table width=550 align=center cellspacing=0 cellpadding=4 bgcolor=white>
	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
		<TR>
			<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input>
		</TR>
		<TR>
			<td align=right>Password&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><input type=password name=pswd class=input></TD></TR>
<TR><Td colspan=2 align=center><input type=image src="<%=path+"/Images/Login.gif"%>">&nbsp;&nbsp;<a href="Forgot.jsp">Forgot Password</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="Enroll.jsp">Not a member Enroll Today?</a>
</TD></TR></tABLE></form>
</TD></TR></TABLE>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.jpg"%>")</SCRIPT>


