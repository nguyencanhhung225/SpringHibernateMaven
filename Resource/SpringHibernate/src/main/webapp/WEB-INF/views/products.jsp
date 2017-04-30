<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Products</title>
	
	<style type="text/css">
		tbody tr td {
			vertical-align: middle;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<h2>Product List</h2>
		
		<div class="row" style="padding: 20px 0px">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<a href="product-add.html" type="button" class="btn btn-success">Add new product</a>	
			</div>
			
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for ...">
					<span class="input-group-btn">
					  <button class="btn btn-primary" type="button">Search</button>
					</span>
			    </div>
			</div>
		</div>
		
		
		
		<table class="table table-hover table-bordered ">
			<thead style="text-align: center;">
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
					<tr >
						<td style="text-align: center; vertical-align: middle;">${product.id}</td>
						<td style="text-align: center; vertical-align: middle;">${product.name}</td>
						<td style="text-align: center; vertical-align: middle;">${product.trademark}</td>
						<td style="text-align: center; vertical-align: middle;">${product.price}</td>
						<td style="text-align: center;"><img src="<c:url value="${product.image}" />" width="120" height="120"/></td>
						<td style="text-align: center; vertical-align: middle;">${product.category.name}</td>
						<td style="text-align: center; vertical-align: middle;">
							<a href="#" style="margin-right: 5px; text-decoration: none;">
								<img src="<c:url value="/resources/images/edit.png" />"/>
							</a>
							
							<a href="#" style="margin-left: 5px;">
								<img src="<c:url value="/resources/images/delete.png" />"/>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>