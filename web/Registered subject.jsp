<%-- 
    Document   : newjsp
    Created on : 2020-5-31, 16:08:30
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        #z1{
            width: 250px;
            height: 250px;
        }
        #z2{
            margin-top: -373px;
        }
        #z3{
            margin-top: 50px;
        }
        #z4{
            margin-top: 30px;
        }
        #z5{
            margin-right: 800px;
            margin-top: 30px;
        }
        #search{
            height: 50px;
            width: 1000px;
            margin-top: 50px;
        }
        #search-submit{
            height: 50px;
            width: 80px;
        }
        #aside{
            margin-left: 1200px;
            margin-top: -1300px;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
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
                        <li><h2>Registered subject</h2></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>>
    <section class="page-name background-bg" data-image-src="./imp/bg1.jpg">
        <div class="overlay">
            <div class="section-padding">
                <div class="container">
                    <form action="#" class="course-search-form">
                        <input type="text" name="search" id="search" class="search" placeholder="Find the Department to be linked ">
                            <input type="submit" name="submit" id="search-submit" class="sreach-submit" value="Search">
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="courses">
        <div class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div>
                            <div class="row">
                                
                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/1.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Neurology</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/2.jpg" alt="Item Thumbnail"id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">the skin department</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/3.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Women's section</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/4.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Department of infectious diseases</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/5.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Anorectal</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div><
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/6.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">orthopaedics</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z3">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/7.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Children's Department</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#">Justin Marks</a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div><!-- /.rating -->
                                            </div><!-- /.details-bottom -->
                                        </div><!-- /.item-details -->
                                    </div><!-- /.item -->
                                </div>

                                 <div class="col-lg-4 col-md-6" id="z2">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/8.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">Children's Department (treatment of various children's diseases)</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6" id="z2">
                                    <div class="item">
                                        <div class="item-thumb"><img src="imp/9.jpg" alt="Item Thumbnail" id="z1"></div><!-- /.item-thumb -->
                                        <div class="item-details">
                                            <h3 class="item-title"><a href="course-single-01.html">        Pentalogy</a></h3><!-- /.item-title -->
                                            <span class="instructor"><a href="#"></a></span><!-- /.instructor -->
                                            <div class="details-bottom">
                                                <div class="course-price float-left"><span class="currency">$</span><span class="price">15.99</span></div><!-- /.course-price -->
                                                <div class="rating float-right">
                                                    <input type="hidden" class="rating-tooltip-manual" data-filled="fas fa-star" data-empty="far fa-star" value="4.5" data-fractions="5"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
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