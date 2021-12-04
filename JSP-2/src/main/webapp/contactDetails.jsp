<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Details</title>
</head>
<body>
	<%
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	session.setAttribute("fname", fname);
	session.setAttribute("lname", lname);
	%>
	<h1>Contact Details</h1>
	<hr>
	<form action="adressDetails.jsp">
		<div>
			<label>Email: </label> <input type="text" name="email">
		</div>
		<div>
			<label>Mobile: </label> <input type="text" name="mobile">
		</div>
		<input type="submit" value="Next">
	</form>

</body>
</html>