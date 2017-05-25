<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person info</title>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<h1>Person info</h1>
	<table>
	<tr>		
		<td>Id:${person.id}</td>
	</tr>
	<tr>
		<td>First Name:${person.firstName}</td>
	</tr>
	<tr>
		<td>Last Name:${person.lastName}</td>
	</tr>
	<tr>
		<td>Email:${person.email}</td>
	</tr>
	<tr>
		<td>Address:${person.address}</td>
	</tr>
	<tr>
		<td>Phone:${person.phone}</td>
	</tr>
	</table>
	
</body>
</html>