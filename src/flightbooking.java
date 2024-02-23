import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class flightbooking extends HttpServlet {

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
        String mail = null;
        String loginid=request.getParameter("loginid");
        String source=request.getParameter("source");
        String destination=request.getParameter("destination");
        String departuredate=request.getParameter("departuredate");
        String not=request.getParameter("not");
        String clas=request.getParameter("class");
        String type=(String) request.getSession().getAttribute("type");
       
        String returndate=request.getParameter("returndate");
        String cardno=request.getParameter("cardno");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String flightno = request.getParameter("Flightno");
        String query =null;
   		try{
   			//======================================
   		 c=DB.getConnect();
         Statement st1=c.createStatement();
     	PreparedStatement pr = c.prepareStatement("select mailid from customer where loginid= ? ");
     	System.out.println("LoginID="+loginid);
     	pr.setString(1,request.getParameter("loginid"));
     	ResultSet rs1 = pr.executeQuery();	
     	 while(rs1.next())
     	 {
     		  mail =rs1.getString(1);
     	 }
     	 String ss= mail;
     	 System.out.println("Email ID:" + mail);
     	Gmail.TO = ss;
    	 Gmail.TEXT="Thanks For Booking the Ticket :confermation Mail will be send to you within few second";
   	 Gmail.send();
   	 System.out.print("Mail sent");	

   			//======================================
   			
   			
   			
   			System.out.println("In try");
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
   	     	PreparedStatement ps = conn.prepareStatement("select * from flights where flightno = ?");
   	     	System.out.println("Flightno = "+flightno);
   	     	ps.setString(1, flightno);
            int reqno=0;
        //    query = new String("select * from flightbooking"); 
            ResultSet rs= st.executeQuery("select * from flightbooking");
            ResultSet rs3 = ps.executeQuery();      
System.out.println("after rs");
            if(rs.next())
            {
            			
            			query = new String("select max(reqno) as rno from flightbooking"); 
            			ResultSet rs2= st.executeQuery("select max(reqno) as rno from flightbooking");
            			if(rs2.next())
            			reqno= rs2.getInt(1) + 1;
            			
            }
            else
            	reqno =100;
            System.out.println("after 1st if else");
            System.out.println(""+type);
            if(type.equals("RT"))    	
            {System.out.println(""+type);
            	query = new String("insert into flightbooking values('"+loginid+"','"+source+"','"+destination+"','"+departuredate+"','"+not+"','"+clas+"','"+type+"','"+returndate+"','"+cardno+"',"+reqno+")");
            
            }
            /*{
            	PreparedStatement ps1=conn.prepareStatement("'?','?','?','?','?','?','?','?','?','?','?','?','?','?','?'");
            	ps.setString(1, loginid);
            	ps.setString(1, source);
            	ps.setString(1, destination);
            	ps.setString(1, departuredate);
            	ps.setString(1, not);
            	ps.setString(1, class);
            	ps.setString(1, type);
            	ps.setString(1, returndatedate);
            	ps.setString(1, cardno);
            	
            }*/
            	
            	else	query = new String("insert into flightbooking values('"+loginid+"','"+source+"','"+destination+"','"+departuredate+"','"+not+"','"+clas+"','"+type+"',null,'"+cardno+"',"+reqno+")");			
            
            st.executeUpdate(query);
            System.out.println("Else finished");
            String class1 = request.getParameter("class");
			double finalfare=0;
			while(rs3.next())
			{System.out.println("in if");
				int fare = rs3.getInt(5);
				
				if(class1.equalsIgnoreCase("EC"))
				{
					finalfare=fare;
				}
				else if(class1.equalsIgnoreCase("BS"))
				{
					finalfare=fare*2;
				}
				else if(class1.equalsIgnoreCase("FS"))
				{
					finalfare = fare*1.5;
				}
			}
			String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
				getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
				out.println("<TABLE WIDTH=600 align=center cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
				out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
				out.println("<TR><TH bgcolor=#234567 colspan=2>Online Flight Booking</TH></TR>");
				out.println("<TR><TH bgcolor=#234567 colspan=2><BR>Booking Confirmation<BR></TH></TR>");
				out.println("<TR><TD align=center colspan=2><BR><BR><h2>Your request no. is <B>"+reqno+" and total fare is "+(finalfare*(Integer.parseInt(not)))+" </h2></B><BR><h3>Your ticket booking details would be  <BR>sent to you within few second on your mail ID<BR><BR><font style='font:bold 15px tahoma'>Thanx for using the sevice</h3></font><BR><BR></TH></TR>");
				out.println("<TR><TD colspan=2 align=center><BR><BR><a href="+relpath+"/admin.jsp?reqno="+reqno+"&cost="+(finalfare*(Integer.parseInt(not)))+">Continue</a>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
					out.println("</TD></TR></tABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");   
					
					
					System.out.println("end");
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
   
