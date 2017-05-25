<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add person</title>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<h1>Add person</h1>

	<form action="/addperson" method="post">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastName" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><input type="text" name="phone" /></td>
			</tr>

			<tr>
				<td>City:</td>
				<td><input type="text" name="city" /></td>
			</tr>

			<tr>
				<td>State:</td>
				<td><input type="text" name="state" /></td>
			</tr>

			<tr>
				<td>Country:</td>
				<td><input type="text" name="country" /></td>
			</tr>
			<tr>
				<td>Post code:</td>
				<td><input type="text" name="zipcode" /></td>
			</tr>
		</table>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="add person" />
	</form>

</body>
</html>