import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class holidaypackage extends HttpServlet {

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
        int days=Integer.parseInt(request.getParameter("NoofDays"));
        String type=request.getParameter("Interest");
        int cost=Integer.parseInt(request.getParameter("BudgetAmtPDay"));
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
		out.println("<head>");
		out.println("<title>Front Page</title>");
		out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
		out.println("</head>");
		out.println("<body bgcolor=\"#FFFFFF\">");
		out.println("<FORM name=mainform method=post>");
		out.println("<div align=\"center\"> ");
		out.println("<center>");
		out.println("<div align=\"center\"> ");
		out.println("<center>");
		out.println("<div align=\"center\"> ");
		out.println("<center>");
		out.println("<div align=\"center\"> ");
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
		out.println("<table width=\"99%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
		out.println("<tr bordercolor=\"#CCCCCC\" bgcolor=\"#000099\"> ");
		out.println("<td width=\"9%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"home.htm\"><font color=\"#FFFFFF\" size=\"5\">Home</font></a></div></td>");
		out.println("<td width=\"13%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"services.htm\"><font color=\"#FFFFFF\" size=\"5\">Services</font></a></div></td>");
		out.println("<td width=\"26%\" bgcolor=\"#0000CC\"> <div align=\"center\"><a href=\"packagefinal.htm\"><font color=\"#FFFFFF\" size=\"5\">Holiday ");
		out.println("Packages </font></a></div></td>");
		out.println("<td width=\"10%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"faq.htm\"><font color=\"#FFFFFF\" size=\"5\">FAQs</font></a></div></td>");
		out.println("<td width=\"25%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"register.htm\"><font color=\"#FFFFFF\" size=\"5\">Register ");
		out.println("Yourself</font></a></div></td>");
		out.println("<td width=\"17%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"aboutus.htm\"><font color=\"#FFFFFF\" size=\"5\">About ");
		out.println("Us</font></a></div></td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</center>");
		out.println("</div>");
		out.println("</center>");
		out.println("</div>");
		out.println("<h1 align=\"center\"> <font face=\"Verdana\"><em><strong><font color=\"#80000\">Holiday ");
		out.println("Packages</font>&nbsp;");
		out.println("</strong></em></font></h1>");
 		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
           
           String query = new String("select * from Package where type='" +type+ "'and Cost<=" +cost+ "and Duration=" +days); 
            ResultSet rs= st.executeQuery(query);
            out.println("<div align=\"center\"><STRONG><FONT"); 
			out.println("face=arial size=5>Search Result</FONT></STRONG><BR><BR>");
            if(rs.next()){
            
            
			out.println("<TABLE border=1 align=\"center\">");
			out.println("<TBODY>");
			out.println("<TR>");
    		out.println("<TD class=text>PackageID</TD>");
    		out.println("<TD class=text>Type</TD>");
    		out.println("<TD class=text>SubType</TD>");
    		out.println("<TD class=text>Place</TD>");
    		out.println("<TD class=text>Cost</TD>");
    		out.println("<TD class=text>Duration</TD>");
    		out.println("<TD class=text>Season</TD></TR>");
			while(rs.next())
            {
            	out.println("<TR>");
            	int i;
            	String str = rs.getString("PackageID");
               	out.println("<TD class=text><a href=\"pckgbooking.htm\">"+str+"</TD>");
            	str=rs.getString("Type");
            	out.println("<TD class=text>"+str+"</TD>");
            	str=rs.getString("SubType");
            	out.println("<TD class=text>"+str+"</TD>");
            	str=rs.getString("Place");
            	out.println("<TD class=text>"+str+"</TD>");
            	i=rs.getInt("Cost");
            	out.println("<TD class=text>"+i+"</TD>");
            	i=rs.getInt("Duration");
            	out.println("<TD class=text>"+i+"</TD>");
            	str=rs.getString("Season");
            	out.println("<TD class=text>"+str+"</TD>");
                        
            }
            
            	out.println("<TBODY>");
				out.println("<TABLE>");
			}
			else
			{
				out.println("<div align=\"center\"><STRONG><FONT"); 
				out.println("face=arial size=5>Sorry !!! the requested package is not available</FONT></STRONG><BR><BR>");
			}	
            	
        	out.println("<p align=\"center\">&nbsp;</p>");
			out.println("<hr size=1 width=\"70%\">");
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
   
