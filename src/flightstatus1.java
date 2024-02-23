import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class flightstatus1 extends HttpServlet {

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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
      	try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();   	  	
      		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Untitled Document</title>");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
			out.println("</head>");
			out.println("<body>");
			out.println("<div align=\"center\">");
			out.println("<center>");
			out.println("<div align=\"center\">");
			out.println("<center>");
			out.println("<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 style=\"border-collapse: collapse\" bordercolor=\"#111111\">");
			out.println("<TBODY>");
			out.println("<TR> ");
			out.println("<TD class=header><img src=\"images/frontpage.gif\" alt=\"\" width=\"386\" height=\"71\"><img src=\"images/Hdr_AS_Seal.jpg\" width=\"289\" height=\"71\"> ");
			out.println("<img src=\"images/1animated12-thumb%5B1%5D.gif\" width=\"67\" height=\"50\"> ");
			out.println("</TD>");
			out.println("</TR>");
			out.println("</TBODY>");
			out.println("</TABLE>");
			out.println("</center>");
			out.println("</div>");
			out.println("<p align=\"left\"><font face=\"arial\" size=\"2\"> ");
			out.println("<marquee behavior=\"scroll\" style=\"font-family: Courier New; color: #333300; text-decoration: blink; font-size: 18pt; font-style: italic; font-weight: bold\">");
			out.println("we share a visi<img src=\"images/Animsun.gif\" width=\"50\" height=\"26\">n ");
			out.println("</marquee>");
			out.println("</font></p>");
			out.println("</center>");
			out.println("</div>");
			out.println("<table width=\"97%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
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
			out.println("<td width=\"22%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"acc.htm\"><font color=\"#FFFFFF\" size=\"4\"> ");
			out.println("Accommodation</font></a></div></td>");
			out.println("<td width=\"21%\" bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"travel.htm\"><font color=\"#FFFFFF\" size=\"4\"> ");
			out.println("Traveling Means</font></a></div>");
			out.println("<div align=\"center\"></div></td>");
			out.println("<td width=\"25%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"travelguide.htm\"><font color=\"#FFFFFF\" size=\"4\">Travel ");
			out.println("Guide</font></a></div></td>");
			out.println("<td width=\"32%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"travelinsurance.htm\"><font color=\"#FFFFFF\" size=\"4\">Travel ");
			out.println("Insurance</font></a></div></td>");
			out.println("</tr>");
			out.println("</table></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<table width=\"97%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
			out.println("<tr bgcolor=\"#3333FF\"> ");
			out.println("<td bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"car.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Car</font></a></div></td>");
			out.println("<td bgcolor=\"#3333FF\"> <div align=\"center\"><a href=\"train.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Train</font></a></div></td>");
			out.println("<td bgcolor=\"#3399FF\"> <div align=\"center\"><a href=\"flight.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Flight</font></a></div></td>");
			out.println("<td> <div align=\"center\"><a href=\"cruise.htm\"><font color=\"#FFFFFF\" size=\"4\">By ");
			out.println("Cruises</font></a></div></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<h1 align=\"center\"><font color=\"#660033\">Flights</font></h1>");
			out.println("<table width=\"733\" height=\"372\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
			out.println("<tr> ");
			out.println("<td height=\"130\" colspan=\"2\"><div align=\"center\"><img src=\"images/h_air_01.gif\" width=\"511\" height=\"110\"><img src=\"images/h_air_02.gif\" width=\"205\" height=\"110\"></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td width=\"145\" height=\"242\" valign=\"top\" bgcolor=\"#660000\"> <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFCCFF\"> <div align=\"center\"><strong><a href=\"flightstatus.htm\">Flight ");
			out.println("Status</a></strong></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><strong><a href=\"farecompare.htm\">Fare ");
			out.println("Compare</a></strong></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><a href=\"passport.htm\"><strong>Passport ");
			out.println("Details</strong></a></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><strong><a href=\"timetable.htm\">Time ");
			out.println("Table Search</a></strong></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><strong><a href=\"flightlogin.htm\">Flight ");
			out.println("Booking </a></strong></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td bgcolor=\"#FFFFCC\"> <div align=\"center\"><a href=\"airport.htm\"><strong>Airport ");
			out.println("Details</strong></a></div></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<p align=\"center\"><img src=\"images/108937881992.jpg\" width=\"125\" height=\"125\"></p></td>");
			out.println("<td width=\"588\"><table width=\"100%\" height=\"282\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" background=\"airfare_search_bg_big.gif\">");
			out.println("<tr bgcolor=\"#FFCCFF\"> ");
			out.println("<td height=\"42\" colspan=\"2\"> <div align=\"center\"><font color=\"#660033\" size=\"5\">Flight ");
			out.println("Status </font></div></td>");
			out.println("</tr>");
			out.println("<tr> ");
			out.println("<td width=\"70%\" height=\"240\" bgcolor=\"#FFCCFF\"> <div align=\"center\"> ");
			out.println("<table width=\"100%\" height=\"156\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
			out.println("<tr bgcolor=\"#FFCCFF\"> ");
			out.println("<td width=\"52%\" colspan=\"2\"> <div align=\"center\"> ");
			out.println("<p><font color=\"#660033\" size=\"5\">Booking Details</font></p>");
			out.println("<p><font color=\"#660033\" size=\"5\"><strong>The page is under ");
			out.println("construction</strong></font></p>");
			out.println("</div>");
			out.println("<div align=\"center\" ></div></td>");

			out.println("</tr>");
			out.println("</table>");
			out.println("<p><font color=\"#663300\" size=\"5\">Thanx for using the sevice</font></p>");
			out.println("<p>&nbsp;</p>");
			out.println("</div></td>");
			out.println("<td width=\"30%\"><img src=\"images/flight.jpg\" width=\"181\" height=\"240\"></td>");
			out.println("</tr>");
			out.println("</table></td>");
			out.println("</tr>");
			out.println("</table>");
			out.println("<p align=\"center\">&nbsp;</p>");
			out.println("<hr size=1 width=\"70%\">");
			out.println("<p align=\"center\"><FONT face=\"Arial, Helvetica, sans-serif\" size=2><A ");
			out.println("href=\"flightstatus.htm\">Flight Status </A> | <A ");
			out.println("href=\"farecompare.htm\">Fare Compare</A> | <A ");
			out.println("href=\"passport.htm\">Passport Details</A> | <A ");
			out.println("href=\"timetable.htm\">Time Table Search</A> | <A ");
			out.println("href=\"flightlogin.htm\">Flight Booking</A> | <A ");
			out.println("href=\"airport.htm\">Airport Details</A></FONT></p>");
			out.println("<div align=\"center\"><FONT face=\"Arial, Helvetica, sans-serif\"><A ");
			out.println("href=\"home.htm\"><FONT ");
			out.println("size=3>HOME</FONT></A></FONT> </div>");
			out.println("<hr size=1 width=\"70%\">");
			out.println("<p align=\"center\"><img src=\"images/twisting_cranberry_wht.jpg\" width=\"300\" height=\"30\"></p>");
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
   
