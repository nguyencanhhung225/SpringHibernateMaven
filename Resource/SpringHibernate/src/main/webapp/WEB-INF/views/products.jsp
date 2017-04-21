<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Product List</title>
	<link href="css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
	
	
</head>
<body>
	<nav class="navbar navbar-inverse" style="border-radius:0px"></nav>
	<div class="container">
		<h2>Product List</h2>
		
		<div class="row" style="padding: 20px 0px">
			<div class="col-lg-6">
				<button type="button" class="btn btn-success">Add new product</button>	
			</div>
			
			<div class="col-lg-6">
				<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for ...">
					<span class="input-group-btn">
					  <button class="btn btn-primary" type="button">Search</button>
					</span>
			    </div>
			</div>
		</div>
		
		
		
		<table class="table table-hover table-bordered table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>TRADEMARK</th>
					<th>PRICE</th>
					<th>IMAGE</th>
					<th>CATEGORY</th>
					<th>OPTION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${msgListProduct}">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.trademark}</td>
						<td>${product.price}</td>
						<td>${product.image}</td>
						<td>${product.idCategory}</td>
						<td>
							<a href="">Edit</a> |
							<a href="">Remove</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<nav class="navbar-text navbar-right">&copy; CanhHung</nav>
	</div>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>