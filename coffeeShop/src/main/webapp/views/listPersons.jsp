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
	<h1>List of all persons</h1>
	<p>
		<a href="/addperson">add a new person</a>
	</p>
	<table border=1>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>City</th>
			<th>Country</th>
			<th>Phone</th>
			<th>Edit</th>
		</tr>
		<c:forEach var="person" items="${persons}">
			<tr>
				<td>${person.firstName}</td>
				<td>${person.lastName}</td>
				<td>${person.email}</td>
				<td>${person.address.city}</td>
				<td>${person.address.country}</td>
				<td>${person.phone}</td>
				<td><a href="/updateperson/${person.id}"> edit </a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>