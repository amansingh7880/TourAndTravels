import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.DB;

public class register extends HttpServlet {

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
    public void doPost(HttpServletRequest request, HttpServletResponse response)  throws IOException, ServletException  {
        Connection c=null;
        String loginid=request.getParameter("loginid");
        String pswd=request.getParameter("pswd");
        String security_question=request.getParameter("security_question");
        String answer=request.getParameter("answer");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String sex=request.getParameter("sex");
        String dob=request.getParameter("dob");
        String add1=request.getParameter("add1");
        String add2=request.getParameter("add2");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String pin=request.getParameter("pin");
        String cno=request.getParameter("cno");
        String mailid=request.getParameter("mailid");
     
        System.out.println(dob);
        System.out.println(state);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(true);
        try{
   	     	Connection conn=DB.getConnect();
   	     	Statement st=conn.createStatement();
            String query = new String("select * from Customer where loginid='"+loginid+"'"); 
            ResultSet rs= st.executeQuery(query);
            if(rs.next())
            {
            	request.setAttribute("Response","Such User Already Exists Please Choose Another Id");
				getServletContext().getRequestDispatcher("/Pages/Enroll.jsp").forward(request,response);
			
            }
            else
            {
            	String[] date = dob.split("-");
            query = new String("insert into customer values('"+loginid+"','"+pswd+"','"+security_question+"','"+answer+"','"+fname+"','"+mname+"','"+lname+"','"+sex+"','"+date[2]+"','"+date[1]+"','"+date[0]+"','"+add1+"','"+add2+"','"+city+"','"+state+"','"+pin+"','"+cno+"','"+mailid+"')");
			st.executeUpdate(query);
			
				session.setAttribute("Member",loginid);
				String relpath=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
				getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
				out.println("<TABLE cellspacing=0 cellpadding=4 style='font:bold 12px verdana;color:green'>");
				out.println("<TR><Td align=center nowrap><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>");
				out.println("<TR><TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+loginid+"</TD></TR>");
				out.println("<TR><TD align=right>First Name&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+fname+"</TD></TR>");
				out.println("<TR><TD align=right>Middle&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+mname+"</TD></TR>");
				out.println("<TR><TD align=right>Last Name&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+lname+"</TD></TR>");
				out.println("<TR><TD align=right>Sex&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+sex+"</TD></TR>");
				out.println("<TR><TD align=right>Date of Birth&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+dob+"</TD></TR>");
				out.println("<TR><TD align=right>Address&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+add1+"</TD></TR>");
				out.println("<TR><TD align=right>City&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+city+"</TD></TR>");
				out.println("<TR><TD align=right>State&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+state+"</TD></TR>");
				out.println("<TR><TD align=right>Zip Code&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+pin+"</TD></TR>");
				out.println("<TR><TD align=right>Contact No&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+cno+"</TD></TR>");
				out.println("<TR><TD align=right>Mail Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD><TD>"+mailid+"</TD></TR>");
				out.println("<TR><TD colspan=2 align=center><BR><BR><button onclick='location=\""+relpath+"/index.jsp\"' accesskey='C'><u>C</U>ontinue</button>&nbsp;&nbsp;&nbsp;<button onclick='location=\""+relpath+"/Pages/Signout.jsp\"' accesskey='S'><u>S</U>ignout</button></TD></TR>");
					out.println("</TD></TR></TABLE><SCRIPT>setFooter(\""+relpath+"\",\""+relpath+"/Images/Back.jpg\")</SCRIPT>");               }
           }catch(Exception e){
            	out.println("Exception"+e.getMessage()+e.toString());
            	e.printStackTrace();
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
   
