<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>yo yo</title>
</head>
<body>
	<h1>Registration Successfull</h1>
	<%
String eid = request.getParameter("eid");
String ename = request.getParameter("ename");
String gender = request.getParameter("gender");
String erole = request.getParameter("erole");
String eloc = request.getParameter("eloc");
String pass = request.getParameter("pass");
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/jfs";
String user = "root";
String password = "root";
String sql = "INSERT INTO employee(eid,ename,gender,erole,eloc,pass) values(?,?,?,?,?,?)";
Class.forName(driver);
Connection con = DriverManager.getConnection(url,user,password);
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,eid);
ps.setString(2, ename);
ps.setString(3, gender);
ps.setString(4, erole);
ps.setString(5, eloc);
ps.setString(6, pass);
int result = ps.executeUpdate();
if(result == 1){
out.println("User Creation Successful");
out.println("<a href='index.jsp'>Home Page</a>");
}else{
out.println("Failed");
out.println("<a href='index.jsp'>Home Page</a>");
}



%>
</body>
</html>