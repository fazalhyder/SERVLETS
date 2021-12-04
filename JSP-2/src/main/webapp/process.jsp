<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
String fname = (String)session.getAttribute("fname");
String lname = (String)session.getAttribute("lname");
String email = (String)session.getAttribute("email");
String mobile = (String)session.getAttribute("mobile");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/jfs";
String user = "root";
String password = "root";
String sql = "INSERT INTO user_details(fname,lname,email,mobile,city,state,country) values(?,?,?,?,?,?,?)";
Class.forName(driver);
Connection con = DriverManager.getConnection(url,user,password);
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,fname);
ps.setString(2, lname);
ps.setString(3, email);
ps.setString(4, mobile);
ps.setString(5, city);
ps.setString(6, state);
ps.setString(7, country);
int result = ps.executeUpdate();
if(result == 1){
out.println("User Creation Successful");
out.println("<a href='sindex.jsp'>Home Page</a>");
}else{
out.println("Failed");
out.println("<a href='sindex.jsp'>Home Page</a>");
}
%>

</body>
</html>