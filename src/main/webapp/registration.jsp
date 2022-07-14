<%@ page import = "com.rayyan.connection.DBCon" %>
<%@ page import = "com.rayyan.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% User auth = (User)request.getSession().getAttribute("auth"); 
	if(auth != null)
	{
		request.setAttribute("auth", auth);
	}
	
	else{}
%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<%@include file="includes/header.jsp"%>
</head>
<body>
<%@include file = "includes/navbar.jsp" %>
<div class = "container">
<div class = "card w-50 mx-auto my-5">
<div class="p-3 mb-2 bg-success text-white"><h4 class = "card-header text-center">Create Account</h4></div>
<div class = "card-body">
		<form action = "register" method = "post">
			<div class = "form-group">
				<label>Name</label>
				<input type = "name" class = "form-control" name = "name" placeholder = "Enter Your Name" required>
			</div>
	
			<div class = "form-group">
				<label>Email</label>
				<input type = "email" class = "form-control" name = "email" placeholder = "Enter Your Email" required>
			</div>
			
			<div class = "form-group">
				<label>Set Password</label>
				<input type = "password" class = "form-control" name = "password" placeholder = "********" required>
			</div>
	
			<div class = "text-center">
				<button type = "submit" class = "btn btn-success">Register</button>
			</div>
		</form>
		<div class = "dropdown-divider"></div>
  		<a class = "dropdown-item" href = "http://localhost:8080/EComApp/login.jsp">Already have an account? Login</a>
</div>	
</div>
</div>

<%@include file = "includes/footer.jsp" %>
</body>
</html>