<%-- 
    Document   : Courses
    Created on : 2020-5-31, 16:15:06
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        #login{
            width: 1662px;
            height: 400px;
        }
        #login_1{
            margin: 30px auto 0 auto;

            width: 700px;
            height: 300px;
            background-color:#D0D0D0;
        }
    </style>
	<!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

    <!-- Header -->
    <header id="header">
        <div class="container">

            <div class="navbar-header">
                <!-- Logo -->
                <div class="navbar-brand">
                    <a class="logo" href="index.html">
                        <img src="./imp/logo.png" alt="logo">
                    </a>
                </div>
                <!-- /Logo -->

                <!-- Mobile toggle -->
                <button class="navbar-toggle">
                    <span></span>
                </button>
                <!-- /Mobile toggle -->
            </div>

            <!-- Navigation -->
            <nav id="nav">
                <ul class="main-menu nav navbar-nav navbar-right">
                    <li><a href="index.jsp">Home</a></li>
						<li><a href="Registered subject.jsp">Registered subject</a></li>
						<li><a href="Admin Login.jsp">Admin Login</a></li>
						<li><a href="Doctor Login.jsp">Doctor Login</a></li>
						<li><a href="Patient Login.jsp">Patient Login</a></li>
						<li><a href="Login.jsp">Login</a></li>
                </ul>
            </nav>
            <!-- /Navigation -->

        </div>
    </header>
    <!-- /Header -->

    <!-- Hero-area -->
    <div class="hero-area section">

        <!-- Backgound Image -->
        <div class="bg-image bg-parallax overlay" style="background-image:url(./imp/page-background.jpg)"></div>
        <!-- /Backgound Image -->

        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <ul class="hero-area-tree">
                        <li><h2><a href="index.jsp">Home</a></h2></li><li><h2>/</h2></li>
                        <li><h2>医生登陆</h2></li>
                    </ul>
       
                </div>
            </div>
        </div>

    </div>
    <!-- /Hero-area -->
    <div id="login" >
        <div id="login_1" >
        <h2>Please Register Here</h2>
        <form action="action.jsp"  method="post">
            USER ID 
            <input type="text" id="UserID"name="UserID" placeholder="ENTER YOUR UserID" required="required"><br/>
            Password 
            <input type="password" id="Password" name="Password" placeholder="ENTER YOUR Password" required="required"><br/>
            EMAIL ID
            <input type="email" id="email" name="email" placeholder="ENTER YOUR EMAIL" required="required"><br/>
            DEPARTMENT
            
           
            <input type="submit" value="Register"/>

        </form>
        </div>
    </div>
        <br/>
        <br/>
    
                                                <footer id="footer" class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="footer-logo">
							<a class="logo" href="index.html">
								<img src="./imp/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<ul class="footer-nav">
							<li><a href="index.jsp">Home</a></li>
						<li><a href="Registered subject.jsp">Registered subject</a></li>
						<li><a href="Admin Login.jsp">Admin Login</a></li>
						<li><a href="Doctor Login.jsp">Doctor Login</a></li>
						<li><a href="Patient Login.jsp">Patient Login</a></li>
						<li><a href="Login.jsp">Login</a></li>
						</ul>
					</div>
				</div>
			
	
</body>


    
</html>
