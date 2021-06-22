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
input[type=password], select, textarea {
  width: auto;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=date], select, textarea {
  width: auto;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=time], select, textarea {
  width: auto;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
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
		<form action="AdminServlet" method="POST">
			<label>Flight Number : </label> 
			<input type="text" name="flight_numb">
			<label> Airlines : </label>
			<%
			try {
				Connection connection = DataBaseUtils.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("SELECT * FROM airlines");
			%>
			<select name="airlines" id="airlines">
				<%
				while (rs.next()) {
				%>
				<option><%=rs.getString("airlines")%></option>
				<%
				}
				%>
			</select>
			<%
			} catch (Exception e) {
			out.println("Please try again" + e);
			}
			%>
			<br><br> 
			<label> From: </label>
			<%
			try {
				Connection connection = DataBaseUtils.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("SELECT * FROM city");
			%>
			<select name="from" id="from">
				<%
				while (rs.next()) {
				%>
				<option><%=rs.getString("location")%></option>
				<%
				}
				%>
			</select>
			<%
			} catch (Exception e) {
			out.println("Please try again" + e);
			}
			%>
			&nbsp; &nbsp; &nbsp; &nbsp;
			<label>To : </label>
			<%
			try {
				Connection connection = DataBaseUtils.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("SELECT * FROM city");
				;
			%>
			<select name="to" id="to">
				<%
				while (rs.next()) {
				%>
				<option><%=rs.getString("location")%></option>
				<%
				}
				%>
			</select>
			<%
			} catch (Exception e) {
			out.println("Please try again" + e);
			}
			%>
			<br> <br>
			<label>Date : </label> 
			<input type="date"  name="Flight_Date""> 
				&nbsp; &nbsp; &nbsp; &nbsp; 
			<label>Time : </label>
			<input type="time"  name="Flight_Time" > 
			&nbsp; &nbsp; &nbsp; &nbsp; 
			<label>Duration:</label>
			<input type="text" name="duration">
			&nbsp; &nbsp; &nbsp;&nbsp;
			<label>Ticket Price:</label>
			<input type="text" name="price"> 
			<br><br><br>
			 <input	type="submit" value="ADD FLIGHT">
		</form>
	</div>

	<br>
	<%@include file="Footer.html"%>
</body>
</html>