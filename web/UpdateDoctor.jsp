<%@ page import="dao.DoctorDao" %>
<%@ page import="dao.imp.DoctorDaoImp" %>
<%@ page import="bean.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.PatientDao" %>
<%@ page import="dao.imp.PatientDaoImp" %>
<%@ page import="bean.Patient" %>
<%@ page import="bean.Appointment" %>
<%@ page import="dao.AppointmentDao" %>
<%@ page import="dao.imp.AppoinmentDaoImp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        #login{
            margin:0 auto;
            width: 1662px;
            height: 600px;
        }
        #login_1,#login_2{
            margin: 30px auto 0 auto;

            width: 80%;
            /*height: 300px;*/
            background-color:#D0D0D0;
        }
        h1,
        h2 {
            text-align: center;
        }
    </style>
    <style>
        #customers,#customerss
        {
            font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
            width:100%;
            border-collapse:collapse;
        }
        #customers td, #customers th,#customerss td,#customerss th
        {
            font-size:1em;
            border:1px solid #98bf21;
            padding:3px 7px 2px 7px;
        }
        #customers th,#customerss th
        {
            font-size:1.1em;
            text-align:left;
            padding-top:5px;
            padding-bottom:4px;
            background-color:#A7C942;
            color:#ffffff;
        }
        caption {caption-side:bottom;}
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
                    <li><h2><a href="index.jsp">Home</a></h2></li><li><h2>/</h2></li>
                    <li><h2>Admin</h2></li>
                </ul>

            </div>
        </div>
    </div>

</div>

<div id="login" >
    <div id="login_1" >
        <h1>welcome Admin</h1>
        <table  id="customers" >
            <caption>
                <form name="input" action="Reg_doctor.jsp" method="get" style="vertical-align:middle;text-align: center">
                    <input type="submit" value="add" />
                </form>

            </caption>
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>Qualification</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Contact</th>
                <th>Email ID</th>
                <th>operation</th>
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
                <td><a href="DoctorDelete?id=<%=doctor.getId()%>">Delete</a></td>
            </tr>
            <%}%>
            <%--            <c:forEach var="U" items="${userAll}"  >--%>
            <%--                <form action="Doctor_list" method="post">--%>
            <%--                    <tr>--%>
            <%--                        <td><input type="text" value="${U.id}" name="id" ></td>--%>
            <%--                        <td><input type="text" value="${U.Doctorame}" name="Doctorame"></td>--%>
            <%--                        <td><input type="text" value="${U.Qualification}" name="Qualification"></td>--%>
            <%--                        <td><input type="text" value="${U.Specialization}" name="Specialization"></td>--%>
            <%--                        <td><input type="text" value="${U.Experience}" name="Experience"></td>--%>
            <%--                        <td><input type="text" value="${U.Contact}" name="Contact"></td>--%>
            <%--                        <td><input type="text" value="${U.Email}" name="Email"></td>--%>
            <%--                        <td><a href="DeleteUser?id=${U.id}">Delete</a></td>--%>
            <%--                    </tr>--%>
            <%--                    <input type="submit" value="更新"/>--%>
            <%--                    <button type="submit">111111</button>--%>
            <%--                </form>--%>
            <%--            </c:forEach>--%>
        </table>
        <table id="customersss">
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>Qualification</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Contact</th>
                <th>Email ID</th>
                <th>operation</th>
            </tr>
            <form action="Doctor_update" method="post">
            <tr>
                <td><input type="text" required="required" name="id" ></td>--%>
                <td><input type="text" required="required" name="name"></td>
                <td><input type="text" required="required" name="Qualification"></td>
                <td><input type="text" required="required" name="Specialization"></td>
                <td><input type="text" required="required" name="Experience"></td>
                <td><input type="text" required="required" name="Contact"></td>
                <td><input type="text" required="required" name="Email"></td>
                <td><input type="submit" value="update"></td>
            </tr>
            </form>
        </table>
        <!-- /Hero-area -->

    </div>
    <div id="login_2">
        <H1>Doctor Appointment</H1>
        <table  id="customerss" >
            <tr>
                <th>Doctor</th>
                <th>Patient</th>
                <th>Health issue</th>
            </tr>
            <%
                AppointmentDao u = new AppoinmentDaoImp();
                List<Appointment> u1 = u.getAppointmentAll();
                for(Appointment appointment:u1)
                {%>
            <tr>
                <td><%=appointment.getDoctor_id()%></td>
                <td><%=appointment.getPatient_id()%></td>
                <td><%=appointment.getHealthissue()%></td>
            </tr>
            <%}%>
            <%--            <c:forEach var="U" items="${userAll}"  >--%>
            <%--                <form action="UpdateUser" method="post">--%>
            <%--                    <tr>--%>
            <%--                        <td><input type="text" value="${U.id}" name="id" ></td>--%>
            <%--                        <td><input type="text" value="${U.name}" name="name"></td>--%>
            <%--&lt;%&ndash;                        <td><a href="DeleteUser?id=${U.id}">Delete</a></td>&ndash;%&gt;--%>
            <%--                    </tr>--%>
            <%--                </form>--%>
            <%--            </c:forEach>--%>
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
                    <%--                        <li><a href="Admin Login.jsp">Admin Login</a></li>--%>
                    <%--                        <li><a href="Doctor Login.jsp">Doctor Login</a></li>--%>
                    <%--                        <li><a href="Patient Login.jsp">Patient Login</a></li>--%>
                    <%--                        <li><a href="Login.jsp">Login</a></li>--%>
                    <%--                        <li><a href="login out.jsp">Login out</a></li>--%>
                </ul>
            </div>
        </div>


</body>



</html>