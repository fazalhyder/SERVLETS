<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>
		<b>Employee Registration Form</b>
	</h1>
	<div class="container">
		<form action="empdb.jsp">
			<label>Employee ID : </label> <input type="number" name="eid">
			<br> <label>Employee Name : </label> <input type="text"
				name="ename"> <br> <label>Employee Gender : </label> <input
				type="radio" id="male" name="gender"value="male"> <label for="male">
				MALE </label> <input type="radio" id="female" name="gender" value="female"> <label
				for="female"> FEMALE </label> <br> <br> <label for="erole">Employee
				Role : </label> <select id="erole" name="erole">
				<option  value="Assistant Engineer">Assistant Engineer</option>
				<option value="Software Engineer">Software Engineer</option>
				<option  value="Intern">Intern</option>
			</select><br> <label for="eloc">Employee Location : </label> <select name="eloc"
				id="eloc">
				<option name="eloc" value="Hyderabad">Hyderabad</option>
				<option name="eloc" value="Mumbai">Mumbai</option>
				<option name="eloc" value="Global">Global</option>
			</select> <br> <input type="checkbox" name="pass"> Do you have passport<br>
			<button type="submit">Register</button>
			<button type="reset">Clear</button>
		</form>
	</div>
	<%
	String eid = request.getParameter("eid");
	String ename = request.getParameter("ename");
	session.setAttribute("eid", eid);
	session.setAttribute("ename", ename);
	String erole = request.getParameter("erole");
	String eloc = request.getParameter("eloc");
	session.setAttribute("erole", erole);
	session.setAttribute("eloc", eloc);
	%>

</body>
</html>