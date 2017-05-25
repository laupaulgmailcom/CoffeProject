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
	<table border = 1>
		<tr>
		<th>Product Name</th>
		<th>Description</th>
		<th>Type</th>
		<th>Price</th>
	</tr>
	<c:forEach var="product" items="${products}">
	<tr>
		<td>${product.productName}</td>
		<td>${product.description}</td>
		<td>${product.productType}</td>
		<td>${product.price}</td>
		</tr>
	</c:forEach>
	</table>
	
</body>
</html>