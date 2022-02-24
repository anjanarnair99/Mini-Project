<%-- 
    Document   : User_Home
    Created on : 18 Feb, 2022, 11:15:13 AM
    Author     : mahes
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                    <li class="active">
                        <a href="#">Admin</a>
                    </li>
                    <li class="active">
                        <a href="Admin_Home.jsp">Home</a>
                    </li>
                    <li class="active">
                        <a href="All_Users.jsp">Users</a>
                    </li>
                    <li class="active">
                        <a href="index.html">Logout</a>
                    </li>
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
		<div class="col-sm-8">
			<!-- Articles -->
                        <h1>Users</h1>
			<div class="row">
                            <table class="table-bordered table-responsive">
                                <tr>
                                    <th width="200">Name</th>
                                    <th width="200">Email</th>
                                    <th width="200">Mobile No</th>
                                    <th width="200">User Type</th>
                                    <th width="200">User Name</th>
                                    <th width="200">Action</th>
                                </tr>
                                <%
                                try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/aenp", "root", "");
        int i=0;
        //ID SELECT
        PreparedStatement pst = conn.prepareStatement("Select * from authentication_table where status='NotApproved'");
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            
            String UserName=""; String Status=""; String name=""; String email=""; String mobile=""; String type="";
            String id="";
            
            id=rs.getString("id");
            name=rs.getString("name"); UserName=rs.getString("username"); Status=rs.getString("Status"); 
            email=rs.getString("email"); mobile=rs.getString("mobile"); type=rs.getString("type");
            
                %>
                                <tr>
                                    <td width="200"><%=name %></td>
                                    <td width="200"><%=email %></td>
                                    <td width="200"><%=mobile %></td>
                                    <td width="200"><%=type %></td>
                                    <td width="200"><%=UserName %></td>
                                    <td width="200">
                                        <a href="activate?id=<%=id %>">Activate</a>
                                    </td>
                                </tr>
                                 <%
        }
     }
catch(Exception e){
    e.printStackTrace();
} 
                                %>
                            </table>
			</div>
			
			<hr>      
		</div><!--/Center Column-->

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

