<%@ page import="com.java.*" %>



<%
ConnectionDB db = new ConnectionDB("stamps");

String title = request.getParameter("title");
String client = request.getParameter("client");
String deadline = request.getParameter("deadline");
String term = request.getParameter("term");
String price =request.getParameter("price");




if(term.equals("1")){

String project = "INSERT into projects values('','"+title+"','"+client+"','"+price+"','"+term+"','"+deadline+"',NOW(),null)";
String set ="SET @last_id = LAST_INSERT_ID()";
String invoice = "INSERT into invoices values('',@last_id,'"+session.getAttribute("id")+"','"+price+"',null,NOW(),null)";


boolean tproject  = db.exe(project);
boolean tset  = db.exe(set);
boolean tinvoice  = db.exe(invoice);

	
}else{

double half = Double.parseDouble(price);
half=half/2;


String project = "INSERT into projects values('','"+title+"','"+client+"','"+price+"','"+term+"','"+deadline+"',NOW(),null)";
String set ="SET @last_id = LAST_INSERT_ID()";
String invoice = "INSERT into invoices values('',@last_id,'"+session.getAttribute("id")+"','"+half+"',null,NOW(),null)";
String invoice2 = "INSERT into invoices values('',@last_id,'"+session.getAttribute("id")+"','"+half+"',null,NOW(),null)";
	
boolean tproject  = db.exe(project);
boolean tset  = db.exe(set);
boolean tinvoice  = db.exe(invoice);
boolean tinvoice1  = db.exe(invoice2);
	
}
	






%>
