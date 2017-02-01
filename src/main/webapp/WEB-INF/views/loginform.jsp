<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login Page</title>
</head>
 <body bgcolor="#D7DBDD">
	 <!-- <FONT color="blue">
		User Name="UserName" and password="password"
	</FONT> -->

<form action="<c:url value='/login' />" method="post">
		<h1 align="center">Login Here</h1>
			<table align="center">
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName" required="required"/></td>
				</tr>				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required="required"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"/></td>
					<td><a href="index.jsp">Cancel</a></td>
				</tr>				
			</table> 		
	</form>

</body>
</html>