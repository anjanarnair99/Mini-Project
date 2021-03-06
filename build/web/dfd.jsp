<%-- 
    Document   : dfd.jsp
    Created on : 20 Feb, 2022, 9:26:43 AM
    Author     : mahes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>AENP</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="abstract.html">Abstract</a>
                    </li>
                    <!--li class="active">
					<a href="dfd.jsp">DFD</a>
					</li-->  
                </ul>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<div class="container-fluid">

		<!-- Left Column -->
		<div class="col-sm-3">

			<!-- List-Group Panel -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-random"></span>&nbsp;&nbsp;&nbsp;Index Terms</h1>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item">Authentication</a>
					<a href="#" class="list-group-item">Dictionary Attack</a>
					<a href="#" class="list-group-item">Lookup Table Attack</a>
					<a href="#" class="list-group-item">Negative Database</a>
					<a href="#" class="list-group-item">Secure Password Storage</a>
				</div>
			</div>

		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			<!-- Articles -->
			<div class="row">
				<article class="col-xs-12">
					<h2>Fig 1.</h2>
                                        <hr>
                                        <image src="E:/PROJECT STUDETS/2022/Anjana Negative Password/AENP/images/Authentication.png" />
                                        </article>
			</div>
			
			<hr>      
		</div><!--/Center Column-->



	  <!-- Right Column -->
	  <div class="col-sm-3">

			<!-- Form --> 
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-log-in"></span> 
						Log In
					</h3>
				</div>
				<div class="panel-body">
					<form action="login" method="post" autocomplete="off">
						<div class="form-group">
							<input type="text" class="form-control" id="uid" name="luid" placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="pwd" name="lpwd" placeholder="Password">
						</div>
                                            <input type="submit" class="pull-right btn btn-info" value="Log In">
						
						<a href="register.html" class="btn btn-default">Register</a>
					</form>
				</div>
			</div>
 
	  </div><!--/Right Column -->

	</div><!--/container-fluid-->
	
	<footer>
	<div class="footer-blurb">
			
        </div>
        <div class="small-print">
            <div class="container" >
        		<p><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></p>
        		<p>Copyright &copy; AENP 2022 </p>
        	</div>
        </div>
	</footer>

	
    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	<!-- IE10 viewport bug workaround -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	
	<!-- Placeholder Images -->
	<script src="js/holder.min.js"></script>
	
</body>

</html>

