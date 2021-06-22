<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.flyaway.utils.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
* {
  box-sizing: border-box;
}
input[type=text], select, textarea {
  width: auto;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  align: center;
}

.button:hover {
  background-color: #4CAF50;
  color: white;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 75%;
}
#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}
#customers tr:nth-child(even){
	background-color: #f2f2f2;}
#customers tr:hover {
	background-color: #ddd;}
#customers th {"
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<%@include file="Header.html"%>
<ul>
  <li><a class="active" href="Index.jsp">Home Page</a></li>
  <li><a href="admin.jsp">Admin Login</a></li>
  <li><a href="admin_page.jsp">List of Flights</a></li>
  <li><a href="change_password.jsp">Change Password</a></li>
  <li><a href="addFlights.jsp">Add new Flight</a></li>
  <li><a href="addCity.jsp">Add new City</a></li>
  <li><a href="addAirlines.jsp">Add new Airlines</a></li>
  <li><a href="Index.jsp">Logout</a></li>
</ul>
	<div align="center" class="container">
		<h2>Add flight:</h2>
		<form action="AddCity" method="POST">
			<label> Add New City : </label> 
			<input type="text" name="new_city">
				&nbsp; &nbsp; &nbsp; &nbsp;
			 <input	type="submit" value="ADD City">
		</form>
	</div>
<div>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DataBaseUtils.getConnection();
	Statement statement = connection.createStatement();
	ResultSet result = statement.executeQuery("SELECT * FROM city");
	
%>

<h1>List of City</h1>
<table id="customers">
  <tr>
    <th>City ID</th>
    <th>City Name</th>
  </tr>
  <%
while(result.next()) {
	String city_ID = result.getString("city_ID");
	String location = result.getString("location");
%>
  <tr>
    <td><%=city_ID%></td>
    <td><%=location%></td>
  </tr>
<%
}
  connection.close();
	statement.close();
} catch (SQLException | ClassNotFoundException e) {
	System.out.println("Connection lost, please try again." + e.getMessage());
}
  %>
</table>

</div>
	<br>
	<%@include file="Footer.html"%>
</body>
</html>