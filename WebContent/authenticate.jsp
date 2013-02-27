<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@ page import="com.java.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");



String userpass="select * from users where username='"+username+"' AND password=SHA("+"\""+password+"\")";
ConnectionDB cd =new ConnectionDB("stamps");

boolean test = cd.executeSQL(userpass);

if(test){

	response.sendRedirect("staff/home.jsp");
	
}
%>
