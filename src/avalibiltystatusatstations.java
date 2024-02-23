import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;   

public class avalibiltystatusatstations extends HttpServlet {

    public void init(ServletConfig config)
    	throws ServletException {
    		super.init(config);
    	}
	 public String getContext(String param) {
		ServletContext sc=getServletContext();
		String prop=sc.getInitParameter(param);
		prop=prop!=null&&prop.length()>0?""+prop:"";
		System.out.println("Contex param:"+prop);
		return prop;
	}
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello World!</h1>");
        out.println("Your request was"+ request.getMethod()+"\n");
        out.println("</body>");
        out.println("</html>");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        Connection c=null;
               
        String source=request.getParameter("source");
        String destination=request.getParameter("destination");
        String class1=request.getParameter("class");        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String query =null;
   		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>avalibilitystatusatstationsresult</title>");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
			out.println("<style type=\"text/css\">");
			out.println("<!--");
			out.println(".style1 {  color: #0000FF;");
			out.println("font-weight: bold;");
			out.println("font-size: 36px;");
			out.println("}");
			out.println("-->");
			out.println("</style>");
			out.println("</head>");
			out.println("<body>");
			out.println("<div align=\"center\">");
			out.println("<center>");
			out.println("<div align=\"center\">");
			out.println("<center>");
			out.println("<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 style=\"border-collapse: collapse\" bordercolor=\"#111111\">");
			out.println("<TBODY>");
			out.println("<TR> ");
			out.println("<TD class=header><img src=\"./images/frontpage.gif\" alt=\"\" width=\"386\" height=\"71\"><img src=\"./images/Hdr_AS_Seal.jpg\" width=\"289\" height=\"71\"> ");
			out.println("<img src=\"./images/1animated12-thumb%5B1%5D.gif\" width=\"67\" height=\"50\"> ");
			out.println("</TD>");
			out.println("</TR>");
			out.println("</TBODY>");
			out.println("</TABLE>");
			out.println("</center>");
			out.println("</div>");
			out.println("<p align=\"left\"><font face=\"arial\" size=\"2\"> ");
			out.println("<marquee behavior=\"scroll\" style=\"font-family: Courier New; color: #333300; text-decoration: blink; font-size: 18pt; font-style: italic; font-weight: bold\">");
			out.println("we share a visi<img src=\"./images/Animsun.gif\" width=\"50\" height=\"26\">n ");
			out.println("</marquee>");
			out.println("</font></p>");
			out.println("</center>");
			out.println("</div>");
			out.println("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
			out.println("<tr bordercolor=\"#CCCCCC\" bgcolor=\"#000099\"> ");
			out.println("<td width=\"10%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"home.htm\"><font color=\"#FFFFFF\" size=\"5\">Home</font></a></div></td>");
			out.println("<td width=\"14%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"services.htm\"><font color=\"#FFFFFF\" size=\"5\">Services</font></a></div></td>");
			out.println("<td width=\"25%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"packagefinal.htm\"><font color=\"#FFFFFF\" size=\"5\">Holiday ");
			out.println("Packages </font></a></div></td>");
			out.println("<td width=\"11%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"faq.htm\"><font color=\"#FFFFFF\" size=\"5\">FAQs</font></a></div></td>");
			out.println("<td width=\"25%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"register.htm\"><font color=\"#FFFFFF\" size=\"5\">Register ");
			out.println("Yourself</font></a></div></td>");
			out.println("<td width=\"15%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"aboutus.htm\"><font color=\"#FFFFFF\" size=\"5\">About ");
			out.println("Us</font></a></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td colspan=\"6\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
			out.println("<tr bgcolor=\"#0000CC\"> ");
			out.println("<td width=\"21%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"acc.htm\"><font color=\"#FFFFFF\" size=\"4\"> ");
			out.println("Accommodation</font></a></div></td>");
			out.println("<td width=\"24%\" bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"travel.htm\"><font color=\"#FFFFFF\" size=\"4\"> ");
			out.println("Traveling Means</font></a></div>");
			out.println("<div align=\"center\"></div></td>");
			out.println("<td width=\"25%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"travelguide.htm\"><font color=\"#FFFFFF\" size=\"4\">Travel ");
			out.println("Guide</font></a></div></td>");
			out.println("<td width=\"30%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"travelinsurance.htm\"><font color=\"#FFFFFF\" size=\"4\">Travel ");
			out.println("Insurance</font></a></div></td>");
			out.println("</tr>");
			out.println("</table></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
			out.println("<tr bgcolor=\"#3333FF\"> ");
			out.println("<td bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"car.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Car</font></a></div></td>");
			out.println("<td bgcolor=\"#3399FF\"> <div align=\"center\"><a href=\"train.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Train</font></a></div></td>");
			out.println("<td bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"flight.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Flight</font></a></div></td>");
			out.println("<td> <div align=\"center\"><a href=\"cruise.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Cruises</font></a></div></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<p align=\"center\"><font color=\"#0000FF\" size=\"6\"><u><font color=\"#990000\">Avalibility ");
			out.println("status at stations</font></u></font><font color=\"#990000\" size=\"4\"> </font></p>");
			out.println("<table width=\"98%\" border=\"0\" cellspacing=\"2\" cellpadding=\"0\">");
			out.println("<tr>");
			out.println("<td width=\"34%\" height=\"137\"> <table width=\"100%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolor=\"#FF99FF\">");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><font size=\"4\"><a href=\"passengerstatus.htm\">Passenger ");
			out.println("Status</a></font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"><div align=\"center\"><font size=\"4\"><a href=\"trainsbetweenimportantstations.htm\">Trains ");
			out.println("between important stations</a></font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFCCFF\"> <div align=\"center\"><font size=\"4\"><a href=\"avalibiltystatusatstations.htm\">Avalibilty ");
			out.println("status at stations</a></font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"><div align=\"center\"><font size=\"4\"><a href=\"faresoftrains.htm\">Fares ");
			out.println("of trains </a> </font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><font size=\"4\"><a href=\"onlinereservation.htm\">Online ");
			out.println("Reservation</a></font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td height=\"25\" bgcolor=\"#FFFFCC\"> <div align=\"center\"><font size=\"4\"><a href=\"timetablet.htm\" target=\"_blank\">Time ");
			out.println("Table</a></font></div></td>");
			out.println("</tr>");
			out.println("</table></td>");
			out.println("<td width=\"66%\" valign=\"top\" bgcolor=\"#FFCCFF\"> ");
			out.println("<p align=\"center\"><font color=\"#660033\" size=\"5\"><strong>The ");
			out.println("page is under construction</strong></font></p>");
			out.println("<p align=\"center\"><font color=\"#660033\" size=\"5\"><strong>Your Request cannot ");
			out.println("be completed </strong></font></p>");
			out.println("<p align=\"center\"><font color=\"#663300\" size=\"5\">Sorry for inconvinence</font></p>");
			out.println("</td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<p align=\"center\"><u><a href=\"avalibiltystatusatstations.htm\"><font size=\"4\"><img src=\"./images/Previous.gif\" width=\"27\" height=\"22\" border=\"0\"><font color=\"#0000FF\">Back</font></font></a><font size=\"4\"> ");
			out.println("|<a href=\"home.htm\">Home </a></font></u>| <a href=\"train.htm\"><font size=\"4\">Trains</font></a></p>");
			out.println("<HR align=center noShade>");
			out.println("<p align=\"center\"><FONT face=Arial size=1>|| <A ");
			out.println("href=\"http://www.indianrail.gov.in/abir.html\">Indian Railways</A>| <A href=\"passengerstatus.htm\" target=DispArea>Passenger ");
			out.println("Status</A> | <A href=\"http://www.indianrail.gov.in/acc_avl.html\" ");
			out.println("target=DispArea>Seat Availability</A> | <A ");
			out.println("href=\"http://www.indianrail.gov.in/fare_enq.html\" target=DispArea>Fare</A> |<BR>");
			out.println("| <A href=\"http://www.indianrail.gov.in/src_dest_trns.html\" ");
			out.println("target=DispArea>TrainsBetween Stations</A> | <A ");
			out.println("href=\"http://www.indianrail.gov.in/inet_trn_num.html\" ");
			out.println("target=DispArea>Schedule</A> | <A href=\"http://www.indianrail.gov.in/stn_code.html\" ");
			out.println("target=DispArea>Know Station Code?</A> |<A ");
			out.println("href=\"http://www.indianrail.gov.in/inet_trn_num.html\" target=DispArea>Know Train ");
			out.println("Number?</A> | <BR>");
			out.println("| <A href=\"http://www.indianrail.gov.in/seatkt.html\" ");
			out.println("target=DispArea>Season Tickets</A> | <A ");
			out.println("href=\"http://www.indianrail.gov.in/class.html\" target=DispArea>Class Codes</A> ");
			out.println("| <A href=\"http://www.indianrail.gov.in/quotas.html\" target=DispArea>Quota Codes</A>| ");
			out.println("<A ");
			out.println("href=\"http://www.indianrail.gov.in/resrules.html\" target=DispArea>Reservation ");
			out.println("Rules</A><BR>");
			out.println("| <A href=\"http://www.indianrail.gov.in/refund_rules.html\" ");
			out.println("target=DispArea>Refund Rules</A> | <A ");
			out.println("href=\"http://www.indianrail.gov.in/break.html\" target=DispArea>Break Journey Rules</A> ");
			out.println("| <A ");
			out.println("href=\"http://www.indianrail.gov.in/tatkal.html\" target=DispArea>Tatkal Trains&nbsp;</A> ");
			out.println("||</FONT> </p>");
			out.println("<HR align=center noShade>");
			out.println("<p>&nbsp;</p>");
			out.println("<p>&nbsp;</p>");
			out.println("<p align=\"center\">&nbsp;</p>");
			out.println("<p>&nbsp;</p>");
			out.println("</body>");
			out.println("</html>");

						

						
					   }catch(Exception e){
							out.println("Exception"+e.getMessage()+e.toString());
						}
						finally{
							try{
								if(c!=null)
									c.close();
							}catch(Exception e){
								out.println("Exception closing the connection"+e.getMessage());
							}
						}
					}
			   }



