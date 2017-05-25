<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>products</title>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<h1>Order detail information</h1>
	<p>
	<table border=1>
		<tr>
			<th>Order Id</th>
			<th>Order Date</th>
			<th>Customer</th>
		</tr>
		<tr>
			<td>${order.id}</td>
			<td>${order.orderDate}</td>
			<td>${order.person.firstName}&nbsp;${order.person.lastName}</td>
		</tr>
	</table>
	<p>
	<p>Order items
	<table border=1>
		<tr>
			<th>Product Name</th>
			<th>Product Type</th>
			<th>Product Price</th>
			<th>Quantity</th>
		</tr>
		<c:forEach var="orderLine" items="${order.orderLines}">
			<tr>
				<td>${orderLine.product.productName}</td>
				<td>${orderLine.product.productType}</td>
				<td>${orderLine.product.price}</td>
				<td>${orderLine.quantity}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>