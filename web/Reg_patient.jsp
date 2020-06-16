<%--
  Created by IntelliJ IDEA.
  User: z5068
  Date: 2020/6/15
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <style>
        #login {
            width: 1662px;
            height: 700px;
        }

        #login_1 {
            margin: 30px auto 0 auto;

            width: 800px;
            height: 600px;
            background-color: #FFFFFF;
        }
    </style>
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            width: 100%;
            border-collapse: collapse;
        }

        #customers td,
        #customers th {
            font-size: 1em;
            border: 1px solid #98bf21;
            padding: 3px 7px 2px 7px;
        }

        #customers th {
            font-size: 1.1em;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 4px;
            background-color: #A7C942;
            color: #ffffff;
        }

        caption {
            caption-side: bottom;
        }
    </style>
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />

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
                <!-- <li><a href="Admin Login.jsp">Admin Login</a></li>
            <li><a href="Doctor Login.jsp">Doctor Login</a></li>
            <li><a href="Patient Login.jsp">Patient Login</a></li> -->
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
                    <li>
                        <h2><a href="index.jsp">Home</a></h2>
                    </li>
                    <li>
                        <h2>/</h2>
                    </li>
                    <li>
                        <h2>registed</h2>
                    </li>
                </ul>

            </div>
        </div>
    </div>

</div>

<div id="login">
    <div id="login_1">
        <html>

        <head>
            <style>
                * {
                    box-sizing: border-box;
                }

                input[type=text],
                input[type=date],
                input[type=password],
                input[type=email],
                select,
                textarea {
                    width: 100%;
                    padding: 12px;
                    border: 1px solid #ccc;
                    border-radius: 4px;
                    resize: vertical;
                }

                label {
                    padding: 12px 12px 12px 0;
                    display: inline-block;
                }

                input[type=submit] {
                    background-color: #4CAF50;
                    color: white;
                    padding: 12px 20px;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                    float: right;
                }

                input[type=submit]:hover {
                    background-color: #45a049;
                }

                .container {
                    border-radius: 5px;
                    background-color: #f2f2f2;
                    padding: 20px;
                }

                .col-25 {
                    float: left;
                    width: 25%;
                    margin-top: 6px;
                }

                .col-75 {
                    float: left;
                    width: 75%;
                    margin-top: 6px;
                }

                /* 清除浮动 */
                .row:after {
                    content: "";
                    display: table;
                    clear: both;
                }

                /* 响应式布局 layout - 在屏幕宽度小于 600px 时， 设置为上下堆叠元素 */
                @media screen and (max-width: 600px) {

                    .col-25,
                    .col-75,
                    input[type=submit] {
                        width: 100%;
                        margin-top: 0;
                    }
                }
            </style>
        </head>

        <body>

        <h2>Patient</h2>
        <p>Doctor message</p>

        <div class="container">
            <form action="reg_patient">
                <div class="row">
                    <div class="col-25">
                        <label for="fname">Name</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="fname" name="firstname" placeholder="Your name..">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="fname">Password</label>
                    </div>
                    <div class="col-75">
                        <input type="password" id="fname" name="firstname" placeholder="Password">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Father/Husband Name </label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="lname" name="lastname" placeholder="Qualification">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Age</label>
                    </div>
                    <div class="col-75">
                        <input type="date" id="lname" name="lastname" placeholder="age">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Gender</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="lname" name="lastname" placeholder="man/woman">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Email ID</label>
                    </div>
                    <div class="col-75">
                        <input type="email" id="lname" name="lastname" placeholder="email">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Contact</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="lname" name="lastname" placeholder="Contact">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">phtotograph</label>
                    </div>
                    <div class="col-75">
                        <input type="image" id="lname" name="lastname" placeholder="">
                    </div>
                </div>
                <div class="row">
                    <input type="submit" value="Submit">
                </div>
        </div>
    </div>

    </form>
</div>

</body>

</html>

<!-- /Hero-area -->

</div>
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
<%--                    <li><a href="Admin Login.jsp">Admin Login</a></li>--%>
<%--                    <li><a href="Doctor Login.jsp">Doctor Login</a></li>--%>
<%--                    <li><a href="Patient Login.jsp">Patient Login</a></li>--%>
                    <li><a href="Login.jsp">Login</a></li>
                </ul>
            </div>
        </div>


        </body>



        </html>