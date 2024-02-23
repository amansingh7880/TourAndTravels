import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;

public class insuranceconfirm extends HttpServlet {

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
        
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        String sex=request.getParameter("sex");        
        String tm=request.getParameter("tm");
        String ticketno=request.getParameter("ticketno");
        String inamount=request.getParameter("inamount");        
        String cardno=request.getParameter("cardno");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String query =null;
        int tkno=Integer.parseInt(ticketno);
        int n=Integer.parseInt(tm);
   		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
            int inrno=0;                     
                      
            ResultSet rs2=st.executeQuery("select * from insurance"); 
            if(rs2.next())
            {
                        
                        query = new String("select max(insuranceno) as rno from insurance"); 
                        ResultSet rs3= st.executeQuery("select max(insuranceno) as rno from insurance");
                        if(rs3.next())
                        inrno= rs3.getInt(1) + 1;
                        
            } 
            else
               inrno=5000;
            ResultSet rs=null;     
           if(n==1)                               {
                  rs= st.executeQuery("select * from trainbooking where pnrno1 ="+tkno+""); 
				  	 System.out.println("select * from flightbooking where reqno =("+tkno+")");
		   }
            else if(n==2) 
                  rs= st.executeQuery("select * from carbooking where reqno ="+tkno+""); 
            else if(n==3) {
                 rs= st.executeQuery("select * from flightbooking where reqno ="+tkno+"");
				 System.out.println("select * from flightbooking where reqno =("+tkno+")");
			}
            else if(n==4)
                 rs= st.executeQuery("select * from cruisebooking where reqno ="+tkno+"");
			System.out.println("Choose option is :"+n);
            if(rs.next())  {    
            query = new String("insert into insurance values('"+name+"','"+age+"','"+sex+"',"+tkno+",'"+inamount+"','"+cardno+"',"+inrno+")");           
			st.executeUpdate(query);  
 		    String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
				getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
				out.println("<TABLE WIDTH=600 align=center cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
				out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
				out.println("<TR><TH bgcolor=#234567 colspan=2>Insurance Confirmation</TH></TR>");
				out.println("<TR><TD align=center colspan=2><BR><BR>Your Insurance no. is <B><I>"+inrno+"</B></I><BR><font style='font:bold 15px tahoma'>Thanx for using the sevice</font><BR><BR></TH></TR>");
				out.println("<TR><TD colspan=2 align=center><BR><BR><button onclick='location=\""+relpath+"/index.jsp\"' accesskey='C'><u>C</U>ontinue</button>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
					out.println("</TD></TR></tABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");   
           } else {
			    	request.setAttribute("Response","Invalid Ticket No or Request No");
					getServletContext().getRequestDispatcher("/Pages/Insurance.jsp").forward(request,response);
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



