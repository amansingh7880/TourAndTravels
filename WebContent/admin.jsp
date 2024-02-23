<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jdbc.DB,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tour&Travels.com</title>
<style type="text/css">
#img
{
alignment:left;
}
</style>



</head>
<body align="center">
<center>
<h2 style="color:Green" alignment=>From Travango.com </h2>
<h2></h2>
<h2 style="color:Green" alignment=>Your Tickets</h2>
</center>
<form name="fr1" action="post">
<input type="button" onclick="window.print()" value="print"></a>
</form>
<table width="50%">
<%
Connection con=DB.getConnect();
Statement st=null;
//Statement st1=null;
st=con.createStatement();
String ins_query="select * from flightbooking where reqno="+request.getParameter("reqno");
//String ins_query1="select * from customer";
ResultSet rs=st.executeQuery(ins_query);
//ResultSet rs1=st1.executeQuery("select fname from customer where LOGINID="+rs.getString("LOGINID"));

if(rs.next())
{
%>
<tr bgcolor="#CCCCCC">	<td>CUSTOMER ID</td><td><%=rs.getString("LOGINID") %></td></tr>
<tr bgcolor="#CCCCCC">	<td>REQUEST NO</td><td><%=rs.getString("reqno") %></td></tr>
<tr bgcolor="#CCCCCC">	<td>CLASS</td><td ><%=rs.getString("clas") %></td></tr>
<tr bgcolor="#CCCCCC">	<td>SOURCE</td><td><%=rs.getString("source") %></td></tr>
<tr bgcolor="#CCCCCC">	<td>DESTINATION</td><td><%=rs.getString("destination") %></td></tr>
<tr bgcolor="#CCCCCC">	<td>DATE OF JOURNEY</td><td><%=rs.getString("departuredate")%></td></tr>
<tr bgcolor="#CCCCCC">	<td>STATUS</td><td>confirmed</td></tr>
<tr bgcolor="#CCCCCC">	<td>TOTAL PRICE</td><td><%=request.getParameter("cost")%></td></tr>
<%
}
%>
</table>
<img style="position:relative;top:-150px;left:100px;" valign=top src="Images/QRCode.png"width="150" height="150">
<p align="center"><b>NOTICE</b></p></br>
=> The ticket will be valid with an ID proof in original provided at the time of booking by the passenger(s).
If found traviling without ID proof,passenger(s) will be treated as without ticket </br>
and charged as per extant rules</br>
=> At least one passenger should travel with his/her card in original which is indicated on ticket.<br>
=> ticket cancilation are permitted through tourandtravels.com</br>
=> passengers are advoised not to carry inflammable/dangerous explosive articals as part of their laguage 
<p align="left">CARRIAGE AND OTHER SERVICES PROVIDED BY THE CARRIER ARE SUBJECT TO CONDITION OF CONTRACT,
WHICH ARE HEREBY INCORPORATED BY REFERENCE.</br>
THESE CONDITION MAY BE OBTAINED FROM THE ISSUING CARRIER.</br></br>

WE RECOMEND THAT YOU CARRY THIS RECIEPT WITH YOU IN CASE YOU MAY BEREQUIRED TO SHOW YOUR 
PROOF OF PURCHASE</br>
 TO THEIMMIGRATION OR ANY OTHER THIRD PARTY.</p></br>
 
 
 <b>Contact Us on- travango.com</br>
 Mail to - support@travango.com</b>

 
</body>
</html>