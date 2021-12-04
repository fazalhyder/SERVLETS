<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Address Details</title>
</head>
<body>
	<%
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	session.setAttribute("email", email);
	session.setAttribute("mobile", mobile);
	%>
	<h1>Address Details</h1>
	<hr>
	<form action="process.jsp">
		<div>
			<label>City: </label> <input type="text" name="city">
		</div>
		<div>
			<label>State: </label> <input type="text" name="state">
		</div>
		<div>
			<label>Country: </label> <input type="text" name="country">
		</div>
		<input type="submit" value="Submit">
	</form>


</body>
</html>