<%@ page import = "com.java.*" %>

<%

String username = request.getParameter("username");
String password = request.getParameter("password");

ConnectionDB cd =new ConnectionDB("stamps");


boolean test = cd.executeSQL("select * from users");

if(test)
{
	for(int i=0; i<ConnectionDB.data.length;i++){
		out.println("<br/>id "+ConnectionDB.data[i][0]);
		out.println("<br/>username "+ConnectionDB.data[i][1]);
		out.println("<br>password "+ConnectionDB.data[i][2]);
	}
	}

%>



