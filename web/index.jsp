<%-- 
    Document   : index
    Created on : 2020-5-31, 16:15:48
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>MediCare</title>
		<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

    </head>
	<body>
		<header id="header" class="transparent-nav">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a class="logo" href="index.html">
							<img src="./imp/logo-alt.png" alt="logo">
						</a>
					</div>
					<button class="navbar-toggle">
						<span></span>
					</button>
				</div>
				<nav id="nav">
					<ul class="main-menu nav navbar-nav navbar-right">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="Registered subject.jsp">Registered subject</a></li>
						<li><a href="login_admin.jsp">Admin Login</a></li>
						<li><a href="login_doctor.jsp">Doctor Login</a></li>
						<li><a href="login_patient.jsp">Patient Login</a></li>
<%--						<li><a href="login.jsp">Login</a></li>--%>
					</ul>
				</nav>
			</div>
		</header>
		<div id="home" class="hero-area">

			<!-- Backgound Image -->
			<div class="bg-image bg-parallax overlay" style="background-image:url(./imp/home-background.jpg)"></div>
			<!-- /Backgound Image -->

			<div class="home-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<h1 class="white-text">MediCare</h1>
							<p class="lead white-text">Let's help you</p>
							<a class="main-button icon-button" href="#">Get Started!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="about" class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="section-header">
							<h2>Welcome to our hospital</h2>
							<p class="lead">You will get our help</p>
						</div>
						<div class="feature">
							<i class="feature-icon fa fa-flask"></i>
							<div class="feature-content">
								<h4>Registered subject</h4>
								<p>You can see what medical subjects you need to see</p>
							</div>
						</div>
						<div class="feature">
							<i class="feature-icon fa fa-users"></i>
							<div class="feature-content">
								<h4>Patient Login</h4>
								<p>You can see the list of doctors.</p>
							</div>
						</div>
						<div class="feature">
							<i class="feature-icon fa fa-comments"></i>
							<div class="feature-content">
								<h4>Doctor Login</h4>
								<p>Can advise patients and tell them they need to buy medicine.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="about-img">
							<img src="imp/about.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="courses" class="section">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2>MediCare</h2>
						<p class="lead">See a doctor online</p>
					</div>
				</div>
				<div id="courses-wrapper">
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course01.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">Know your body</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course02.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">Online consultation </a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course03.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">register</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course04.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">Buy medicine</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
					</div>
					<div class="row">

						<!-- single course -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course05.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">View Doctor List</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course06.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">physical examination</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course07.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">make an appointment</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="course">
								<a href="#" class="course-img">
									<img src="./imp/course08.jpg" alt="">
									<i class="course-link-icon fa fa-link"></i>
								</a>
								<a class="course-title" href="#">Search doctor</a>
								<div class="course-details">
									<span class="course-category"></span>
									<span class="course-price course-free">Free</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="center-btn">
						<a class="main-button icon-button" href="#">More Courses</a>
					</div>
				</div>
			</div>
		</div>
		<div id="why-us" class="section">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2>Our services</h2>
						<p class="lead">What is it</p>
					</div>
					<div class="col-md-4">
						<div class="feature">
							<i class="feature-icon fa fa-flask"></i>
							<div class="feature-content">
								<h4>Registered subject</h4>
								<p>You can see what medical subjects you need to see</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature">
							<i class="feature-icon fa fa-users"></i>
							<div class="feature-content">
								<h4>Patient Login</h4>
								<p>You can see the list of doctors..</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature">
							<i class="feature-icon fa fa-comments"></i>
							<div class="feature-content">
								<h4>Doctor Login</h4>
								<p>Can advise patients and tell them they need to buy medicine..</p>
							</div>
						</div>
					</div>
				</div>
				<hr class="section-hr">
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
				<div id="bottom-footer" class="row">
					<div class="col-md-4 col-md-push-8">
						<ul class="footer-social">
							<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#" class="youtube"><i class="fa fa-youtube"></i></a></li>
							<li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
					<div class="col-md-8 col-md-pull-4">
						<div class="footer-copyright">
							
						</div>
					</div>
				</div>
			</div>
		</footer>
		<div id='preloader'><div class='preloader'></div></div>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>

	</body>
</html>
