<%-- 
    Document   : Action
    Created on : May 7, 2019, 1:37:29 PM
    Author     : Pritam
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*, java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>CRUD</title>
		<link rel="stylesheet" href="css/bootstrap.css">
	</head>
	
	<body>
		<%
		String userid = request.getParameter("UserID");
                String password= request.getParameter("Password");
		String email = request.getParameter("email");
		
		String department = request.getParameter("department");
	


		UserPOJO uObject = new UserPOJO();
		uObject.setUserid(userid);
                uObject.setPassword(password);
		uObject.setEmail(email);
		uObject.setDepartment(department);
	


		Operations opObject = new Operations();
		String message = opObject.save(uObject);%>


		<%if(message!=null){%>
		<jsp:include page="Login.jsp"></jsp:include>
		<% }
			%>
	</body>
</html>
