
	
	import java.io.*;

	import javax.servlet.*;
	import javax.servlet.http.*;

	import com.jdbc.DB;

	import java.sql.*;

	public class FlightSearch extends HttpServlet {

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
	        String type= request.getParameter("type");
	       System.out.println(type);
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        String query =null;
	   		try{
	   			getServletContext().getRequestDispatcher("/Pages/Common/Global.jsp").include(request,response);
	   	     	Connection conn=DB.getConnect();
	   	     	PreparedStatement st=conn.prepareStatement("select * from flightbooking  where source=? and destination = ?");
	            int reqno=0;
	            query = new String("select * from flightbooking"); 
	            st.setString(1, source);
	            st.setString(2, destination);
	            ResultSet rs= st.executeQuery();
	            
	            out.println("<table cellspacing=0 WITDH=580  cellpadding=4 style='font:bold 20px verdana'>");
	            out.println("<tr><td align=right> Flightno </td><td> Flight Name </td><td align=right> Time </td><td> Economy Fare </td><td> Economy Discounted Fare </td><td> First Class Fare </td><td> First Class Discounted Fare </td><td> Business Class Fare </td><td> Business Class Discounted Fare </td></tr>");
	            System.out.println("UPDATED");
	            {
	            while(rs.next())
	            {
	            	if(type.equalsIgnoreCase("OW")){
	            			String s= rs.getString(1);
	            			out.println("<tr><td align=left>"+rs.getString(1)+"</td><td align=left>"+rs.getString(2)+"</td><td align=left>"+rs.getString(6)+"</td><td align=left>"+rs.getInt(5)+"</td><td align=left>"+rs.getInt(5)+"</td><td align=left>"+rs.getInt(5)*1.5+"</td><td align=left>"+rs.getInt(5)*1.5+"</td><td align=left>"+rs.getInt(5)*2+"</td><td align=left>"+rs.getInt(5)*2+"</td><td><a href='Pages/Travelling/FlightBooking.jsp?Flightno="+s+"&s="+rs.getString(3)+"&d="+rs.getString(4)+"&type="+type+"'<img src=''>Book</a></td></tr>");		
	            			out.println("<tr> <tr>");
	            	}
	            	else if(type.equalsIgnoreCase("RT"))
	            	{	double i = (rs.getInt(5)*2);
	            		double j = (rs.getInt(5)*2)-(rs.getInt(5)*2*0.1);
	            		String s= rs.getString(1);
            			out.println("<tr><td align=left>"+rs.getString(1)+"</td><td align=left>"+rs.getString(2)+"</td><td align=left>"+rs.getString(6)+"</td><td align=left>"+i+"</td><td align=left>"+j+"</td><td align=left>"+i*1.5+"</td><td align=left>"+j*1.5+"</td><td align=left>"+i*2+"</td><td align=left>"+j*2+"</td><td><a href='Pages/Travelling/FlightBooking.jsp?Flightno="+s+"&s="+rs.getString(3)+"&d="+rs.getString(4)+"&type="+type+"'<img src=''>Book</a></td></tr>");		
            	
	            	}
	            	
	            	}
	            out.println("</table>");
	            
	           }}catch(Exception e){
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
	   



