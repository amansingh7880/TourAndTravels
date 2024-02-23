<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
	session.invalidate();
	response.sendRedirect(path+"/index.jsp");
%>

