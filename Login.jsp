<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name =request.getParameter("name");
String pass =request.getParameter("pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into lm1(name,pass)values('"+name+"','"+pass+"')");
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
        <link rel="stylesheet" href="home.css">
    </head>
    <body>
        <header>
            <nav>
                    <button class="b1"><a href="home.html">Home</a></button>
                    <button class="b2"><a href="Issue.html">Issue</a></button>
                    <button class="b3"><a href="Mybook.html">My Books</a></button>
                    <button class="b4"><a href="About.html">About Us</a></button>
                    <button class="b5"><a href="html.html">Log Out</a></button><hr>
            </nav>
        </header><br><br><br>
        <center>
            <h1>
                Welcome To E-Library
            </h1><br>
            <h2>
                B.Tech - Mechanical Engineering
            </h2>
        </center><br><br><br><br>
        <button class="y1"><a class="a2" href="First.html">First Year</a></button>
        <button class="y2"><a class="a2" href="Second.html">Second Year</a></button>
        <button class="y3"><a class="a2" href="Third.html">Third Year</a></button>
        <button class="y4"><a class="a2" href="Final.html">Final Year</a></button>
    </body>
</html>