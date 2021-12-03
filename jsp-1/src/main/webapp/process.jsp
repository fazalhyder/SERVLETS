<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
</head>
<body>
	<%
	int result = 0;
	String s1 = request.getParameter("num1");
	int num1 = Integer.parseInt(s1);
	String s2 = request.getParameter("num2");
	int num2 = Integer.parseInt(s2);

	String opt = request.getParameter("operation");

	switch (opt) {
	case ("+"):
		result = num1 + num2;
		break;
	case ("-"):
		result = num1 - num2;
		break;
	case ("*"):

		result = num1 * num2;
		break;
	case ("/"):
		result = num1 / num2;
		break;
	}
	out.println("<a href='index.html'>Back</a> <br> <div><br></div>");
	out.println("result of "+num1 +opt+ num2 +" is "+result);
	%>
	<h2>
		Result:
		<%=result%></h2>
</body>
</html>