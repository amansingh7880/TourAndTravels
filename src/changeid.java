import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class changeid extends HttpServlet {

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
        
        String loginid2=request.getParameter("loginid2");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
          
   		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
            String query = new String("select * from Customer where loginid='"+loginid2+"'"); 
            ResultSet rs= st.executeQuery(query);
            if(rs.next())
            {
			
            	out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Register Yourself</title>");
				out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
				out.println("<SCRIPT>");
				out.println("function doSubmit()");
				out.println("{");
				out.println("var strErrMsg;");
				out.println("strErrMsg = \"\";			");
				out.println("strErrMsg = doValidations();");
				out.println("if (strErrMsg == \"\" )");
				out.println("{				");
				out.println("document.mainform.action = \"changeid\";				");
				out.println("document.mainform.submit();");
				out.println("}");
				out.println("else");
				out.println("{alert(strErrMsg);}");
				out.println("}");
				out.println("function doValidations()");
				out.println("{");
				out.println("var strFld;");
				out.println("var frmDoc;");
				out.println("var strErrMsg;");
				out.println("strErrMsg = \"\";");
				out.println("frmDoc = document.mainform;			");
				out.println("strFld = frmDoc.loginid2");
				out.println("if (strFld.value == \"\") strErrMsg = strErrMsg + \"Please enter LoginID\\n\";");
				out.println("return strErrMsg;");
				out.println("}");
				out.println("</SCRIPT>");
				out.println("</head>");
				out.println("<body><FORM name=mainform method=post>");
				out.println("<center>");
				out.println("<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 style=\"border-collapse: collapse\" bordercolor=\"#111111\">");
				out.println("<TBODY>");
				out.println("<TR> ");
				out.println("<TD height=\"90\" class=header><img src=\"images/frontpage.gif\" alt=\"\" width=\"386\" height=\"71\"><img src=\"images/Hdr_AS_Seal.jpg\" width=\"289\" height=\"71\"> ");
				out.println("<img src=\"images/1animated12-thumb%5B1%5D.gif\" width=\"67\" height=\"50\" align=\"top\"></TD>");
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
				out.println("<td width=\"26%\" bgcolor=\"#000099\"> ");
				out.println("<div align=\"center\"><a href=\"packagefinal.htm\"><font color=\"#FFFFFF\" size=\"5\">Holiday ");
				out.println("Packages </font></a></div></td>");
				out.println("<td width=\"10%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"faq.htm\"><font color=\"#FFFFFF\" size=\"5\">FAQs</font></a></div></td>");
				out.println("<td width=\"25%\" bgcolor=\"#0000CC\"> ");
				out.println("<div align=\"center\"><a href=\"register.htm\"><font color=\"#FFFFFF\" size=\"5\">Register ");
				out.println("Yourself</font></a></div></td>");
				out.println("<td width=\"17%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"aboutus.htm\"><font color=\"#FFFFFF\" size=\"5\">About ");
				out.println("Us</font></a></div></td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("<p>&nbsp;</p>");
				out.println("<div align=\"center\">");
            	out.println("<p><strong><font color=\"#0000FF\" size=\"6\">Sorry!!!!</font></strong></p>");
				out.println("<p><strong><font color=\"#FF0000\" size=\"5\">The loginid "+loginid2+" is already ");
				out.println("in use</font></strong></p>");
				out.println("<p><strong><font color=\"#FF0000\" size=\"5\">Please try another one</font></strong></p>");
				out.println("<p><strong><font color=\"#0000FF\" size=\"5\">LoginID </font></strong> ");
				out.println("<input name=\"loginid2\" type=\"text\" id=\"loginid2\">");
				out.println("</p>");
				out.println("<a href=\"javascript:doSubmit();\"><img src=\"images/createProfile.gif\" width=\"208\" height=\"26\" border=\"0\"></a> ");
				out.println("<HR SIZE=1 width=\"70%\">");
				out.println("<FONT face=\"Arial, Helvetica, sans-serif\"><A ");
				out.println("href=\"home.htm\"><FONT ");
				out.println("size=3>HOME</FONT></A></FONT>");
				out.println("<p><img src=\"images/twisting_cranberry_wht.jpg\" width=\"300\" height=\"30\"></p>");
				out.println("<p>&nbsp; </p>");
				out.println("</div>");
				out.println("</body>");
				out.println("</html>");


			}
			else
			{
				
				query= new String("update Customer set loginid='"+loginid2+"'where loginid='XXXX'");
				st.executeUpdate(query);
				
				query= new String("select * from Customer where loginid='"+loginid2+"'");
				rs=st.executeQuery(query);
				if(rs.next()){
				
				String pswd1=rs.getString("pswd");
				
        		String fname=rs.getString("fname");
        		String mname=rs.getString("mname");
        		String lname=rs.getString("lname");
        		String sex=rs.getString("sex");
        		String dd=rs.getString("dd");
        		String mm=rs.getString("mm");
        		String yy=rs.getString("yy");
        		String add1=rs.getString("add1");
        		String add2=rs.getString("add2");
        		String city=rs.getString("city");
        		String state=rs.getString("state");
        		String pin=rs.getString("pin");
        		String cno=rs.getString("cno");
        		String mailid=rs.getString("mailid");
				out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Register Yourself</title>");
				out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">");
				out.println("</head>");
				out.println("<body><FORM name=mainform method=post>");
				out.println("<div align=\"center\">");
				out.println("<center>");
				out.println("<div align=\"center\">");
				out.println("<center>");
				out.println("<TABLE cellSpacing=0 cellPadding=0 width=750 border=0 style=\"border-collapse: collapse\" bordercolor=\"#111111\">");
				out.println("<TBODY>");
				out.println("<TR> ");
				out.println("<TD height=\"90\" class=header><img src=\"images/frontpage.gif\" alt=\"\" width=\"386\" height=\"71\"><img src=\"images/Hdr_AS_Seal.jpg\" width=\"289\" height=\"71\"> ");
				out.println("<img src=\"images/1animated12-thumb%5B1%5D.gif\" width=\"67\" height=\"50\" align=\"top\"></TD>");
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
				out.println("<td width=\"26%\" bgcolor=\"#000099\"> ");
				out.println("<div align=\"center\"><a href=\"packagefinal.htm\"><font color=\"#FFFFFF\" size=\"5\">Holiday ");
				out.println("Packages </font></a></div></td>");
				out.println("<td width=\"10%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"faq.htm\"><font color=\"#FFFFFF\" size=\"5\">FAQs</font></a></div></td>");
				out.println("<td width=\"25%\" bgcolor=\"#0000CC\"> ");
				out.println("<div align=\"center\"><a href=\"register.htm\"><font color=\"#FFFFFF\" size=\"5\">Register ");
				out.println("Yourself</font></a></div></td>");
				out.println("<td width=\"17%\" bgcolor=\"#000099\"> <div align=\"center\"><a href=\"aboutus.htm\"><font color=\"#FFFFFF\" size=\"5\">About ");
				out.println("Us</font></a></div></td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("<p>&nbsp;</p>");
				out.println("<div align=\"center\">");
  				out.println("<table width=\"50%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
    			out.println("<tr> ");
      			out.println("<td height=\"48\" colspan=\"2\"> <div align=\"center\"><strong><font color=\"#0000FF\" size=\"5\">Thanx ");
          		out.println("For Registering Yourself</font></strong></div></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td colspan=\"2\">&nbsp;</td>");
    			out.println("</tr>");
    			out.println("<tr> ");
     		 	out.println("<td colspan=\"2\"><div align=\"center\"><strong><font color=\"#993300\" size=\"4\">Your ");
          		out.println("Details</font></strong></div></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td width=\"51%\"><div align=\"left\"><font size=\"3\"><strong>Login ID:</strong></font></div></td>");
      			out.println("<td width=\"49%\"><font color=\"#330066\" size=\"3\">"+loginid2+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>First Name</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+fname+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Middle Name</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+mname+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Last Name</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+lname+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Sex</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+sex+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Date of Birth</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+dd+"-"+mm+"-"+yy+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Address</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+add1+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+add2+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>City</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+city+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>State</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+state+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Zip Code</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+pin+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Contact Number</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+cno+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td><div align=\"left\"><font size=\"3\"><strong>Mail ID</strong></font></div></td>");
      			out.println("<td><font color=\"#330066\" size=\"3\">"+mailid+"</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td colspan=\"2\"><font size=\"3\">&nbsp;</font><font size=\"3\">&nbsp;</font></td>");
    			out.println("</tr>");
    			out.println("<tr> ");
      			out.println("<td colspan=\"2\"><font size=\"3\">&nbsp;</font><font size=\"3\">&nbsp;</font></td>");
    			out.println("</tr>");
  				out.println("</table>");
				out.println("<HR SIZE=1 width=\"70%\">");
				out.println("<FONT face=\"Arial, Helvetica, sans-serif\"><A ");
				out.println("href=\"home.htm\"><FONT ");
				out.println("size=3>HOME</FONT></A></FONT>");
				out.println("<p><img src=\"images/twisting_cranberry_wht.jpg\" width=\"300\" height=\"30\"></p>");
				out.println("<p>&nbsp; </p>");
				out.println("</div>");
				out.println("</body>");
				out.println("</html>");
				}
				
				
            }
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
   
