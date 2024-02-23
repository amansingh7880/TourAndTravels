import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.jdbc.DB;

import java.sql.*;
public class canceltrain2 extends HttpServlet {
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
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Connection c=null;
       String reqno = request.getParameter("reqno");
       // int reqno=request.getParameter("reqno");
        int r = Integer.parseInt(reqno);
        int k=0;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(true);
		String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
  		try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
            String query = new String("select * from Customer where loginid='" +session.getAttribute("Member")+"'");
            
            ResultSet rs= st.executeQuery(query);
            if(!rs.next()) 	response.sendRedirect(relpath+"/Pages/Login.jsp");
            else  {
                    //ResultSet rs1 = st.executeQuery("select * from trainbooking where reqno =  ("+r+") " ); 
            	ResultSet rs1 = st.executeQuery("select * from trainbooking where reqno =  ("+r+") " );
                    if (rs1.next())  {
                    st.execute("delete from trainbooking where reqno =  ("+r+") " );
					getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
					out.println("<TABLE WIDTH=600 align=center cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
					out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
					out.println("<TR><TH bgcolor=#234567 colspan=2>Reservation Cancelled</TH></TR>");
					out.println("<TR><TD align=center colspan=2><BR><BR>Your reservation corresponding to <BR>request no. <B><I>"+reqno+"</B></I> has been cancelled. <BR>Your cancellation details will be send to you <BR>within 2days.<BR><BR></TH></TR>");
					out.println("<TR><TD colspan=2 align=center><BR><BR><button onclick='location=\""+relpath+"/index.jsp\"' accesskey='C'><u>C</U>ontinue</button>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
					out.println("</TD></TR></tABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");   					} else {
						request.setAttribute("Response","Invalid Request No");
						getServletContext().getRequestDispatcher("/Pages/Accomadation/CancelReservation.jsp").forward(request,response);
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
   
