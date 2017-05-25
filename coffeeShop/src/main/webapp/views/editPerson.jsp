<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>person</title>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<h1>Edit person</h1>
	
	<form action="/addperson" method="post">
	<table>
		<tr>
			<td>firstName:</td>
			<td><input type="text" name="firstName" value="${person.firstName}"  /> </td></tr>
			<tr>
			<td>lastName:</td>
		<td><input type="text" name="lastName" value="${person.lastName}" /> </td></tr>
		<tr>
			<td>email:</td>
		<td><input type="text" name="email" value="${person.email}" /> </td></tr>
		<tr>
			<td>phone:</td>
		<td><input type="text" name="phone"  value="${person.phone}" /> </td></tr>
	
			<tr>
			<td>city:</td>
		<td><input type="text" name="city" value="${person.address.city}"  /> </td></tr>
	
			<tr>
			<td>state:</td>
		<td><input type="text" name="state" value="${person.address.state}" /> </td></tr>
	
			<tr>
			<td>country:</td>
		<td><input type="text" name="country" value="${person.address.country}" /> </td></tr>
	

			<tr>
			<td>zipcode:</td>
		<td><input type="text" name="zipcode" value="${person.address.zipcode}" /> </td></tr>
				
	</table>
	
	<input type="hidden" name= "${_csrf.parameterName}" value="${_csrf.token}"/>
	
	<input type="submit" value="submit"/>
	</form>
	</body>
	</html>
	