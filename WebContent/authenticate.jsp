<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@ page import="com.java.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");



String userpass="select * from users where username='"+username+"' AND password=SHA("+"\""+password+"\")";
ConnectionDB cd =new ConnectionDB("stamps");

boolean test = cd.executeSQL(userpass);

if(test){
	
	session.setAttribute("username", ConnectionDB.data[0][1]);
	session.setAttribute("id", ConnectionDB.data[0][0]);
	session.setAttribute("firstname", ConnectionDB.data[0][4]);
	session.setAttribute("lastname", ConnectionDB.data[0][6]);
	response.sendRedirect("staff/home.jsp");
}
%>
