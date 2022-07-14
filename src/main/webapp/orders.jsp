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
<title>Orders</title>
<%@include file="includes/header.jsp"%>
</head>
<body>
	<%@include file = "includes/navbar.jsp" %>
	
	<h1 align = "center"><img src = "https://cdn3.iconfinder.com/data/icons/e-commerce-vol-interactions/80/package-order-ready-checkmark-512.png" width = "50" height = "50">Orders</h1>

	<%@include file = "includes/footer.jsp" %>
</body>
</html>