<%@ include file="header.jsp" %>
<%@ page import="com.java.*"%>
<%
ConnectionDB db = new ConnectionDB("stamps");


String clients = "SELECT id,name FROM CLIENTS order by createdAt desc";

boolean clienttest= db.executeSQL(clients);



db.executeSQL(clients);
%>


 
 <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Actions</li>
              <li class="active"><a href="projects.jsp"><i class=" icon-plus-sign"></i>New Project</a></li>
              <li><a href="viewprojects.jsp"><i class="icon-eye-open"></i>View Projects</a></li>

             
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        
  
           <div class="span6">
              <form class="well form-horizontal" method="post" action="createproject.jsp">
    <fieldset>
    <legend>New Project
    <%if(request.getParameter("success")!=null && request.getParameter("success").equals("1")){ 
   		out.print("<div class='alert alert-success'>"); 
   		out.print("Client is successfully added. you can add more</div>"); 
    }
    

    %></legend>
    <div class="control-group">
		<label class="control-label">Project Title:</label>
		<div class="controls">
		<input type="text" id="inputEmail" placeholder="Project Title" name="title" required>
		
		</div>
	</div>
	 <div class="control-group">
		<label class="control-label">Client:</label>
		<div class="controls">
		<select name="client" required>
		<%
		for(int i=0;i<ConnectionDB.data.length;i++){
			out.print("<option value="+ConnectionDB.data[i][0]+">"+ConnectionDB.data[i][1]+"</option>");
		}
				 %>
		</select>
		</div>
	</div>
	 <div class="control-group ">
		<label class="control-label">Quoted Price</label>
		<div class="controls">
		
		<input type="text" id="inputEmail" placeholder="Price" name="price" required>.00

		</div>
	</div>
	
	 <div class="control-group ">
		<label class="control-label">Deadline</label>
		<div class="controls">
		
		<input type="text" data-date-format="YYYY-MM-DD" class="datepicker" id="datepicker" name="deadline" required >

		</div>
	</div>
	
	 <div class="control-group">
		<label class="control-label">Mode of Payment:</label>
		<div class="controls">
		<select name="term" >
		<option value=1>Full payment</option>
		<option value=2>50% down payment</option>
		</select><span class="help-block">If '50% down payment'.The Client should pay the other half on the end of the project </span>

		</div>
	</div>
	
     
    <button type="submit" class="btn" style="float:right">Submit</button>
    <button type="reset" class="btn"  style="float:right">Clear</button>
  
    </fieldset>
    </form>
       
        
        </div><!--/span-->
      </div><!--/row-->

  
  <%@ include file="footer.jsp" %>