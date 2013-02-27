<%@page import="com.java.ConnectionDB"%>
<%@include file="header.jsp" %>
<%

ConnectionDB db = new ConnectionDB("stamps"); 

String selClient= "SELECT name,tin,contact,email,address FROM clients order by createdAt";

boolean testClient = db.executeSQL(selClient);




%>


 <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Actions</li>
              <li><a href="clients.jsp"><i class=" icon-plus-sign"></i>New Client</a></li>
              <li class="active"><a href="viewclients.jsp"><i class="icon-eye-open"></i>View Clients</a></li>

             
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        
  
           <div class="span9">
          
         <div class="well"> 
          <table class="table table-striped table-hover table-bordered">
     <caption>Client</caption>
          <thead>
          	<tr>
          		<th>#</th>
          		<th>Name</th>
          		<th>Tin</th>
          		<th>Email</th>
          		<th>Contact #</th>
          		<th>Address</th>
          	</tr>
          </thead>
          <tbody>
          <%
          if(testClient){
        	  
          	for(int i=0;i<ConnectionDB.data.length;i++){
          		int ctr=1;
          		out.print("<tr>");
          		out.print("<td>"+ctr+"</td>");
          		for(int j=0;j<ConnectionDB.data[i].length;j++){
          			out.print("<td>"+ConnectionDB.data[i][j]);
          			out.print("</td>");
          			}
          		out.print("</tr>");	
          		ctr++;
          	} 
          } %>
          </tbody>
          
          
          </table>
          </div>
          
          
        </div><!--/span-->
      </div><!--/row-->

 
    




<%@include file="footer.jsp" %>