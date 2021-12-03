<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>income tax calculator</title>
</head>
<body>
	<%
	double tax = 0;
	String si = request.getParameter("income");
	int income = Integer.parseInt(si);
	if (income <= 250000)
		tax = 0;
	else if (income > 250000 && income <= 500000)
		tax = 0.5 * (income);
	else if (income > 500000 && income <= 1000000)
		tax = 2.0 * (income);
	else if (income > 1000000)
		tax = 3.0 * (income);
	else
		out.println("Income tax amount is " + tax);
	%>
		<h2>
		TAX AMOUNT = :
		<%=tax%></h2>
		<br>
		
		<a href=index.html><h2><b>HOME</b></h2></a>
</body>
</html>