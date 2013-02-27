<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	

    <!-- Le styles -->
    <link href="Bootstrap,%20from%20Twitter_files/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
      
      #login{
      width:400px;
      
      }
       body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
    </style>
    <link href="Bootstrap,%20from%20Twitter_files/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/ico/favicon.png">
  </head>

  <body>
  
  <%@ page import = "com.java.*" %>
  <% 
  
  
  
  
  %>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Celio</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <h1>Welcome To Celio</h1>
      <br/>
      <div id="login">
       <form class="form-signin" method="post" action = "authenticate.jsp">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" name="username" class="input-block-level" placeholder="username">
        <input type="password" name="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
      </form>
    </div> <!-- /container -->
	</div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="Bootstrap,%20from%20Twitter_files/jquery.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-transition.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-alert.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-modal.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-dropdown.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-scrollspy.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-tab.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-tooltip.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-popover.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-button.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-collapse.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-carousel.js"></script>
    <script src="Bootstrap,%20from%20Twitter_files/bootstrap-typeahead.js"></script>

  

</body></html>