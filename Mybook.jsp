<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String name = request.getParameter("name");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306";
String database = "test";
String userid ="root";
String password ="123456";
try{
Class.forName(driver);
}catch(ClassNotFoundException e){
e.printStackTrace();}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="style1.css">
</head>
<body>
<table class="styled-table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Book</th>
                <th>Date</th>
                
            </tr>
        </thead>
</center>
<%
try{
//Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
statement = con.createStatement();
String sql = "select * from lm3 where name='"+name+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){%>
<tbody>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("Bname") %></td>
<td><%=resultSet.getString("Date") %></td>
</tr></tbody>
<%}connection.close();
}catch(Exception e){
e.printStackTrace();}
%>
</table>

</body>
</html>