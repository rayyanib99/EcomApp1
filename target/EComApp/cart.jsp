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
<title>Cart</title>
<%@include file="includes/header.jsp"%>
<style type = "text/css"> 
	.table thead 
	{
		vertical-align: middle;
		text-align: center;
	}
	
	.table tbody td 
	{
		vertical-align: middle;
		text-align: left;
	}
	
	.btn-increment, .btn-decrement
	{
		box-shadow: none;
		font-size: 25px;
	}
	
	.form-control
	{
		vertical-align: middle;
		text-align: center;
	}
</style> 
</head>
<body>
	<%@include file = "includes/navbar.jsp" %>

	<h1 align = "center">
	<img src = "https://www.nicepng.com/png/full/285-2851817_add-to-cart-ecosystems-icon.png" width = "50" height = "50" class = "d-inline block align-top">Cart
	</h1>
	
	<div class = "container">
	<table class = "table table-success">
		<thead>
			<tr>
				<th scope = "col">Name</th>
				<th scope = "col">Category</th>
				<th scope = "col">Price</th>
				<th scope = "col">Quantity</th>
				<th scope = "col">Cancel</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><img src = "product-images/Laptop.jpg" width = "50" height = "50" class = "d-inline-block align-top"> HP Pavilion Laptop</td>
				<td>Electronics</td>
				<td>$199.99</td>
				<td>
					<form action = "" method = "post" class = "form-inline">
						<input type = "hidden" name = "id" value = "1" class = "form-input">
						<div class = "form-group d flex justify-content-between">
							<a class = "btn btn-sm btn-decrement" href = "#"><i class = "fas fa-minus-square"></i></a>
							<input type = "number" name = "quantity" class = "form-control" value = "1" readonly>
							<a class = "btn btn-sm btn-increment" href = "#"><i class = "fas fa-plus-square"></i></a>
						</div>
					</form>
				</td>
				<td><a class = "btn btn-sm btn-danger" href = "#">Remove</a></td>
			</tr>
		</tbody>
	</table>
	<div class = "row justify-content-center"><a class = "mx-1 btn btn-success" href = "index.jsp">Continue Shopping</a><a class = "mx-2 btn btn-primary" href = "#">Proceed To Checkout</a><h3>Total: $199.99</h3></div>
	</div>
	
	<%@include file = "includes/footer.jsp" %>
</body>
</html>