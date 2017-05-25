<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>products</title>
</head>
<body>
	<%@ include file="NavBar.jsp" %>
	<h1>List of all products</h1>
	<p><a href="/addproduct">add a new product</a></p>
	<table border = 1>
		<tr>
		<th>Product Name</th>
		<th>Description</th>
		<th>Type</th>
		<th>Price</th>		
		<th>operation</th>
	</tr>
	<c:forEach var="product" items="${products}">
	<tr>
		<td>${product.productName}</td>
		<td>${product.description}</td>
		<td>${product.productType}</td>
		<td>${product.price}</td>
		<td><a href="/deleteproduct/${product.id}">delete</a>&nbsp;&nbsp;&nbsp;<a href="/editproduct/${product.id}">edit</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>