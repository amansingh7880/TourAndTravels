import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class status extends HttpServlet {

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
 
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        Connection c=null;
        
        String pnr=request.getParameter("pnr");
         
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String query =null;
        int n;
        int pnr1=Integer.parseInt(pnr);
         
   		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
            query = new String("select * from trainbooking where pnrno1 =("+pnr1+")" );
            ResultSet rs= st.executeQuery(query);                                            
            n=0; 
            if(rs.next())
                 
            {
			String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
			getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
			out.println("<TABLE WIDTH=600 align=center cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
			out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
			out.println("<TR><TH bgcolor=#234567 colspan=2>Status Confirmation</TH></TR><TR><TD colspan=2>");
			out.println("<p align=\"center\"><font color=\"#660000\" size=\"5\">PNR no is ----"+pnr1+"</font></p>");
			out.println("<p align=\"center\"><font color=\"#660000\" size=\"5\">Status is ------confirm</font><font size=\"5\"></P></TD></TR>");
			out.println("<TR><TD colspan=2 align=center><BR><BR><button onclick='location=\""+relpath+"/index.jsp\"' accesskey='C'><u>C</U>ontinue</button>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
							out.println("</TD></TR></tABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");   
		    } else {
					request.setAttribute("Response","Invalid PNR Number");
					getServletContext().getRequestDispatcher("/Pages/Travelling/PassengerStatus.jsp").forward(request,response);
             }
           }catch(Exception e){
            	out.println("Exception"+e.getMessage()+e.toString());
				e.printStackTrace(new PrintWriter(response.getWriter()));
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
   
