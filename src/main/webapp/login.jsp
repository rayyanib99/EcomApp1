<%@ page import = "com.rayyan.connection.DBCon" %>
<%@ page import = "com.rayyan.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% User auth = (User)request.getSession().getAttribute("auth"); 
	if(auth != null)
	{
		response.sendRedirect("index.jsp");
	}
	
	else{}
%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<%@include file="includes/header.jsp"%>
</head>
<body>
<%@include file = "includes/navbar.jsp" %>
<div class = "container">
<div class = "card w-50 mx-auto my-5">
<div class="p-3 mb-2 bg-success text-white"><h4 class = "card-header text-center">Sign In</h4></div>
<div class = "card-body">
		<form action = "login" method = "post">
			<div class = "form-group">
				<label>Email Address</label>
				<input type = "email" class = "form-control" name = "login-email" placeholder = "Enter Your Email" required>
			</div>
	
			<div class = "form-group">
				<label>Password</label>
				<input type = "password" class = "form-control" name = "login-password" placeholder = "********" required>
			</div>
	
			<div class = "text-center">
				<button type = "submit" class = "btn btn-success">Login</button>
			</div>
      		</div>
		</form>
  		<div class = "dropdown-divider"></div>
  		<a class = "dropdown-item" href = "http://localhost:8080/EComApp/registration.jsp">New around here? Sign up</a>
  		<a class = "dropdown-item" href = "http://localhost:8080/EComApp/forgotpassword.jsp">Forgot password?</a>
</div>	
</div>
</div>
<%@include file = "includes/footer.jsp" %>
</body>
</html>