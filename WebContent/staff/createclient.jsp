<%@ page import="com.java.*"%>
<% 

String name= request.getParameter("name");
String tin= request.getParameter("tin");
String contact= request.getParameter("contact");
String email= request.getParameter("email");
String address= request.getParameter("address");


ConnectionDB cd =new ConnectionDB("stamps");

String insert ="insert into clients(name,tin,contact,email,address,createdAt) values("+"'"+name+"',"+"'"+tin+"',"+"'"+contact+"',"+"'"+email+"',"+"'"+address+"',NOW())";

int isInserted= cd.updateData(insert);

if(isInserted==1){

response.sendRedirect("clients.jsp?success=1");

	
	 }
	 
	 
	 %>


