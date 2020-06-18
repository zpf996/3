<%@ page import="dao.DoctorDao" %>
<%@ page import="bean.Doctor" %>
<%@ page import="dao.imp.DoctorDaoImp" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <style>
        #login {
            margin:0 auto;
            width: 1662px;
            height: 1000px;
        }

        #login_1 {
            margin: 30px auto 0 auto;

            width: 80%;
            /*height: 500px;*/
            background-color: #FFFFFF;
        }

        #login_2 {
            margin: 30px auto 0 auto;

            width: 1662px;
            /*height: 300px;*/
            background-color: #FFFFFF;
        }

        #login_3 {
            margin: 30px auto 0 auto;

            width: 900px;
            height: 500px;
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


        /* input[type=text],
        input[type=date],
        input[type=text],
        select,
        textarea {
            width:20%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        input[type=submit] {
            width: 5%;
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            /* float: right; */
        /* }  */
    </style>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .search{
            width: 30%;
            margin: 100px auto;
            display: flex;
            /*border: 1px solid red;*/
        }
        .search input{
            float: left;//左浮动
        flex: 4;
            height: 30px;
            outline: none;
            border: 1px solid red;
            box-sizing: border-box;
            width=content+border*2+padding*2
            padding-left: 10px;
        }
        .search button{
            float: right;
            flex: 1;
            height: 30px;
            background-color: red;
            color: white;
            border-style: none;
            outline: none;
        }
        .search button i{
            font-style: normal;
        }
        .search button:hover{
            font-size: 16px;
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
                <li><a href="index.jsp">Login out</a></li>
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
                        <h2>Patient</h2>
                    </li>
                </ul>

            </div>
        </div>
    </div>

</div>

<div id="login">
    <div id="login_1">
        <h1>welcome Patient</h1>
        <h2>Doctor List</h2>
        <div class="search">
            <form name="input" action="Doctor_research" method="post" >
            <input type="text" placeholder="press..." name="" id="id" value="" />
            <button><i>Go</i></button>
            </form>
        </div>
        <table id="customers">
            <!-- <caption>
                <form name="input" action="Reg_doctor.jsp" method="get">
                    <input type="submit" value="add" />
                </form>
                <form name="input" action="" method="get">
                    <input type="submit" value="update" />
                </form>
            </caption> -->
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>Qualification</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Contact</th>
                <th>Email ID</th>
<%--                <th>operation</th>--%>
            </tr>
            <%
                DoctorDao ud = new DoctorDaoImp();
                List<Doctor> userAll = ud.getDoctorAll();
                for(Doctor doctor:userAll)
                {%>
            <tr>
                <td><%=doctor.getId()%></td>
                <td><%=doctor.getDoctorName()%></td>
                <td><%=doctor.getQualification()%></td>
                <td><%=doctor.getSpecialization()%></td>
                <td><%=doctor.getExperience()%></td>
                <td><%=doctor.getContact()%></td>
                <td><%=doctor.getEmail()%></td>
            </tr>
            <%}%>
<%--            <c:forEach var="U" items="${userAll}">--%>
<%--                <form action="UpdateUser" method="post">--%>
<%--                    <tr>--%>
<%--                        <td><input type="text" value="${U.id}" name="id"></td>--%>
<%--                        <td><input type="text" value="${U.name}" name="name"></td>--%>
<%--                        <td><input type="text" value="${U.sex}" name="sex"></td>--%>
<%--                        <td><input type="text" value="${U.pwd}" name="pwd"></td>--%>
<%--                        <td><input type="text" value="${U.home}" name="home"></td>--%>
<%--                        <td><input type="text" value="${U.info}" name="info"></td>--%>
<%--                        <td><input type="text" value="${U.info}" name="info"></td>--%>
<%--                        <td><a href="DeleteUser?id=${U.id}">Cure</a></td>--%>
<%--                    </tr>--%>
<%--                </form>--%>
<%--            </c:forEach>--%>
        </table>

        <!-- /Hero-area -->

    </div>
    <br>
    <br>
    <div id="login_2">
        <H1>your Appointments message</H1>
        <table id="customerss">
            <tr>
                <th>Doctor</th>
                <th>suggestion</th>
                <th>medicine</th>
                <th>physical examination</th>
            </tr>
           <tr>
               <td></td>
           </tr>
        </table>
    </div>
    <html>

    <head>
        <style>
            * {
                box-sizing: border-box;
            }

            input[type=text],
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

            .row:after {
                content: "";
                display: table;
                clear: both;
            }

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

    <h2>Make an appointment</h2>
    <form name="input" action="reg_appointment" method="post" style="vertical-align:middle;text-align: center">
        <div class="container">
            <div class="row">
                <div class="col-25">
                    <label for="name">ID</label>
                </div>
                <div class="col-75">
                    <input type="text" id="name" name="id" placeholder="press some number">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="name">Patient id</label>
                </div>
                <div class="col-75">
                    <input type="text" id="name" name="patient" placeholder="Your id">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="name">Doctor id</label>
                </div>
                <div class="col-75">
                    <input type="text" id="name" name="doctor" placeholder="doctor id">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="name">Health issue</label>
                </div>
                <div class="col-75">
                    <input type="text" id="Health issue" name="healthissue" placeholder="Your Health issue..">
                </div>
            </div>

            <input type="submit" value="submit" />

        </div>
    </form>

</div>

</body>

</html>
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