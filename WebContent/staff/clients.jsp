
<%@include file="header.jsp" %>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Actions</li>
              <li class="active"><a href="#"><i class=" icon-plus-sign"></i>New Client</a></li>
              <li><a href="viewclients.jsp"><i class="icon-eye-open"></i>View Clients</a></li>

             
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
    

        <div class="span5">
        <%if(request.getParameter("success")!=null && request.getParameter("success").equals("1")){ 
   		out.print("<div class='alert alert-success'>"); 
   		out.print("Client is successfully added. you can add more</div>"); 
    }
    

    %>
              <form class="well form-horizontal" method="post" action="createclient.jsp">
    <fieldset>
    <legend>New Client 
	</legend>
    <div class="control-group">
		<label class="control-label">Client Name:</label>
		<div class="controls">
		<input type="text" id="inputEmail" placeholder="Client Name" name="name">
		
		</div>
	</div>
	 <div class="control-group">
		<label class="control-label">Client Tin:</label>
		<div class="controls">
		<input type="text" id="inputEmail" placeholder="Client Tin" name="tin">
		
		</div>
	</div>
	 <div class="control-group">
		<label class="control-label">Contact #:</label>
		<div class="controls">
		<input type="text" id="inputEmail" placeholder="Contact Number" name="contact">
		
		</div>
	</div>
	 <div class="control-group">
		<label class="control-label">Email:</label>
		<div class="controls">
		<input type="email" id="inputEmail" placeholder="Email Address" name="email">

		</div>
	</div>
	 <div class="control-group">
		<label class="control-label">Address:</label>
		<div class="controls">
		<input type="text" id="inputEmail" placeholder="Address" name="address">
	
		</div>
	</div>
  
    <button type="submit" class="btn" style="float:right">Submit</button>
    <button type="reset" class="btn"  style="float:right">Clear</button>
    </fieldset>
    </form>
        </div><!--/span-->
      </div><!--/row-->

 