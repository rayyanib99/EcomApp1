<%@ page import="com.rayyan.connection.DBCon"%>
<%@ page import="com.rayyan.model.*"%>
<%@ page import="com.rayyan.dao.ProductDao"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) 
{
	request.setAttribute("auth", auth);
}

ProductDao prd = new ProductDao(DBCon.getConnection());
List<Product> products = prd.getAllProducts();
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<%@include file = "includes/header.jsp"%>
</head>
<body>
	<%@include file = "includes/navbar.jsp"%>
	<h1 align = "center">
		<img
			src = "https://www.rawshorts.com/freeicons/wp-content/uploads/2017/01/black_repicthousebase_1484336385-1.png"
			width = "50" height="50" class="d-inline block align-top">Home
	</h1>

	<div class = "container">
		<div class = "card-header my-3">All Products</div>
		<div class = "row">
			<%
			if(!products.isEmpty())
			{
				for(Product p : products)
				{%>
				<% if(p.getProdStatus().equalsIgnoreCase("Out-of-Stock")) 
				{%>	
					<div class = "col-md-3 my-3">
					<div class = "card w-100" style = "width: 18rem;">
						<img class = "card-img-top" src = <%= p.getProdImg() %> alt = "Card image cap">
						<div class = "card-body text-dark">
							<h5 class = "card-title"><%= p.getProdName() %></h5>
							<h6 class = "price">Price: $<%= p.getProdPrice() %></h6>
							<h6 class = "category">Category: <%= p.getProdCategory() %></h6>
							<h6 class = "status text-danger"><%= p.getProdStatus() %></h6>
							<div class = "mt-3 d-flex justify-content-between">
								<a href = "add-to-cart?id=<%= p.getProdID() %>"><button class = "btn btn-success" disabled>Add To Cart</button></a>
								<div class="col-auto my-1">
      								<label class = "mr-sm-2 sr-only" for = "inlineFormCustomSelect">Preference</label>
      								<select class = "custom-select mr-sm-2" id = "inlineFormCustomSelect" disabled>
        								<option selected>Qty</option>
        								<option value="1">1</option>
        								<option value="2">2</option>
        								<option value="3">3</option>
        								<option value="1">4</option>
        								<option value="2">5</option>
        								<option value="3">6</option>
        								<option value="1">7</option>
        								<option value="2">8</option>
        								<option value="3">9</option>
        								<option value="3">10</option>
      								</select>
    							</div>
							</div>
						</div>
					</div>
				</div>
				<%}
				else 
				{%>
					<div class = "col-md-3 my-3">
					<div class = "card w-100" style = "width: 18rem;">
						<img class = "card-img-top" src = <%= p.getProdImg() %> alt = "Card image cap">
						<div class = "card-body text-dark">
							<h5 class = "card-title"><%= p.getProdName() %></h5>
							<h6 class = "price">Price: $<%= p.getProdPrice() %></h6>
							<h6 class = "category">Category: <%= p.getProdCategory() %></h6>
							<h6 class = "status text-success"><%= p.getProdStatus() %></h6>
							<div class = "mt-3 d-flex justify-content-between">
								<a href = "add-to-cart?id=<%= p.getProdID() %>"><button class = "btn btn-success">Add To Cart</button></a>
	  							<div class="col-auto my-1">
      								<label class = "mr-sm-2 sr-only" for = "inlineFormCustomSelect">Preference</label>
      								<select class = "custom-select mr-sm-2" id = "inlineFormCustomSelect">
        								<option selected>Qty</option>
        								<option value="1">1</option>
        								<option value="2">2</option>
        								<option value="3">3</option>
        								<option value="1">4</option>
        								<option value="2">5</option>
        								<option value="3">6</option>
        								<option value="1">7</option>
        								<option value="2">8</option>
        								<option value="3">9</option>
        								<option value="3">10</option>
      								</select>
    							</div>
							</div>
						</div>
					</div>
				</div>
				<%}%>
				<%}
			}
		%>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>
