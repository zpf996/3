<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <style>
        #login {
            width: 1662px;
            height: 700px;
        }

        #login_1,
        #login_2 {
            margin: 30px auto 0 auto;

            width: 1662px;
            height: 300px;
            background-color: #FFFFFF;
        }

        h1,
        h2 {
            text-align: center;
        }
    </style>
    <style>
        #customers,
        #customerss {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            width: 100%;
            border-collapse: collapse;
        }

        #customers td,
        #customers th,
        #customerss td,
        #customerss th {
            font-size: 1em;
            border: 1px solid #98bf21;
            padding: 3px 7px 2px 7px;
        }

        #customers th,
        #customerss th {
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
                <%--                <li><a href="Admin Login.jsp">Admin Login</a></li>--%>
                <%--                <li><a href="Doctor Login.jsp">Doctor Login</a></li>--%>
                <%--                <li><a href="Patient Login.jsp">Patient Login</a></li>--%>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="login out.jsp">Login out</a></li>
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
                        <h2>Doctor</h2>
                    </li>
                </ul>

            </div>
        </div>
    </div>

</div>

<div id="login">
    <div id="login_1">
        <h1>welcome Doctor</h1>
        <h2>your patients</h2>
        <table id="customers">
            <caption>
                <form name="input" action="Reg_doctor.jsp" method="get">
                    <input type="submit" value="add" />
                </form>
                <form name="input" action="" method="get">
                    <input type="submit" value="update" />
                </form>
            </caption>
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>Qualification</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Contact<not null>
                </th>
                <th>Email ID</th>
                <th>operation</th>
            </tr>
            <c:forEach var="U" items="${userAll}">
                <form action="UpdateUser" method="post">
                    <tr>
                        <td><input type="text" value="${U.id}" name="id"></td>
                        <td><input type="text" value="${U.name}" name="name"></td>
                        <td><input type="text" value="${U.sex}" name="sex"></td>
                        <td><input type="text" value="${U.pwd}" name="pwd"></td>
                        <td><input type="text" value="${U.home}" name="home"></td>
                        <td><input type="text" value="${U.info}" name="info"></td>
                        <td><input type="text" value="${U.info}" name="info"></td>
                        <td><a href="DeleteUser?id=${U.id}">Cure</a></td>
                    </tr>
                </form>
            </c:forEach>
        </table>

        <!-- /Hero-area -->

    </div>
    <div id="login_2">
        <H1>your Appointments</H1>
        <table id="customerss">
            <tr>
                <th>Patient</th>
                <th>Issue</th>
                <th>operation</th>
            </tr>
            <c:forEach var="U" items="${userAll}">
                <form action="UpdateUser" method="post">
                    <tr>
                        <td><input type="text" value="${U.name}" name="name"></td>
                        <td><input type="text" value="${U.name}" name="issue"></td>
                        <td>
                            <a href="DeleteUser?id=${U.id}">accept</a>
                            <br>
                            <a href="DeleteUser?id=${U.id}">Refuse</a>
                        </td>--%>
                    </tr>
                </form>
            </c:forEach>
        </table>
    </div>
</div>
<br>
<br>
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
                    <!-- <%--                        <li><a href="Admin Login.jsp">Admin Login</a></li>--%>
                    <%--                        <li><a href="Doctor Login.jsp">Doctor Login</a></li>--%>
                    <%--                        <li><a href="Patient Login.jsp">Patient Login</a></li>--%> -->
                    <%--                        <li><a href="Login.jsp">Login</a></li>--%>
                    <%--                        <li><a href="login out.jsp">Login out</a></li>--%>
                </ul>
            </div>
        </div>


</body>



</html>