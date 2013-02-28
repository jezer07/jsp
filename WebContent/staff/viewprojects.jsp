<%@include file="header.jsp" %>
<%@ page import="com.java.*"%>

 <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Actions</li>
              <li><a href="clients.jsp"><i class=" icon-plus-sign"></i>New Client</a></li>
              <li class="active"><a href="viewprojects.jsp"><i class="icon-eye-open"></i>View Clients</a></li>

             
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        
  
           <div class="span9">
          
         <div class="well container-fluid"> 
          <%  
          ConnectionDB db = new Connection("stamps");
          
          
          %>
          
          
          
          
          
          </div>
          
          
        </div><!--/span-->
      </div><!--/row-->

<%@include file="footer.jsp" %>
