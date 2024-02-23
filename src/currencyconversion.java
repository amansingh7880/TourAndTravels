import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class currencyconversion extends HttpServlet {

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
        
        String amount=request.getParameter("amount");
        String source=request.getParameter("source");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(true);
		String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
        String query =null;
        int money=Integer.parseInt(amount); 
        int n=Integer.parseInt(source);
        double convert=0;
        String sourcep=new String();
   		try{
            
              if(n==1)
                  {
                   convert=money*82.4949; 
                   sourcep="GBP United Kingdom Pounds";
                  }  
                   
              else if(n==2)
                  {
                   convert=money*0.415394; 
                   sourcep="JPY Japan Yen";
                  }  
             else if(n==3)
                  {
                   convert=money*0.0291286; 
                   sourcep="ITL Italy Lire ";
                  } 
             else if(n==4)
                  {
                   convert=money*32.7315; 
                   sourcep="AUD Australia Dollars";
                  } 
               else if(n==5)
                  {
                   convert=money*35.8603; 
                   sourcep="CAD Canada Dollars ";
                  } 
               else if(n==6)
                  {
                   convert=money*49.4969; 
                   sourcep="USD United States Dollars";
                  } 
               else if(n==7)
                  {
                   convert=money* 30.6087 ; 
                   sourcep="NZD New Zealand Dollars ";
                  }                
              		getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
					out.println("<TABLE WIDTH=600 align=center cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
					out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
					out.println("<TR><TH bgcolor=#234567 colspan=2>Conversion Result</TH></TR>");
					out.println("<TR><TD align=center colspan=2><BR><BR>Your Request corresponding to "+money+"&nbsp;&nbsp;&nbsp;"+sourcep+"  =  "+convert+  "  INR Indian Rupees");
					out.println("<TR><TD colspan=2 align=center><BR><BR><button onclick='location=\""+relpath+"/index.jsp\"' accesskey='C'><u>C</U>ontinue</button>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
					out.println("</TD></TR></tABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");   
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
   
