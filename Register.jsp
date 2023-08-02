<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<% 
String name =request.getParameter("name");
String Enrollno =request.getParameter("Enrollno");
String Cno =request.getParameter("Cno");
String Email =request.getParameter("Email");
String Pass =request.getParameter("Pass");
String Address =request.getParameter("Address");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into lm2(name,Enrollno,Cno,Email,Pass,Address)values('"+name+"','"+Enrollno+"','"+Cno+"','"+Email+"','"+Pass+"','"+Address+"')");
out.println("Data is successfully inserted!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
<form method="post" action="Login.jsp">
<center><br><br><br>
<h1>Library Management System</h1><br><br>
<h2 class="Log">Log in</h2>
<p class="Home">
Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;
<input type="text" placeholder="Email" name="name"><br><br>
Password :&nbsp;
<input type="password" placeholder="Password" name="pass"><br><br></p>
<a class="a2" href="home.html">
<button class="B1">Log in</button></a><br><br>
<a class="a1" href="Register.html">New User Register</a></center>
</form>
</body>
</html>