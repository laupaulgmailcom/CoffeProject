<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add product</title>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<h1>Add Product</h1>

	<form action="/addproduct" method="post">
		<table>
			<tr>
				<td>Product Name:</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><input type="text" name="description" /></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>Product Type:</td>
				<td><input type="text" name="productType" value="BREAKFAST" />
				</td>
			</tr>
		</table>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="add product" />
	</form>

</body>
</html>