<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.flyaway.FlightsServlet"%>
<%@ page import="com.flyaway.utils.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
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
input[type=date], select, textarea {
  width: auto;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=number], select, textarea {
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
 align: center;
 
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
<title>FlyAway</title>
</head>

<body >
	<%@include file="Header.html"%>

	<div align="center">
		<a href='admin.jsp'><button class=button> Admin Functions</button></a>
	</div>

	<div class="container" align="center">
		<h1>Search Flights</h1>
		<form action="FlightsServlet" method="get">
			<label>  From : </label>
			<%
			try {
				Connection connection = DataBaseUtils.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("SELECT * FROM city");
			%>
			<select name="from">
				<%
				while (rs.next()) {
				%>
				<option> <%=rs.getString("location")%> </option>
				<%
				}
				%> 
			</select>
			<%
			} catch (Exception e) {
			out.println("Please try again" + e);
			}
			%>
			&nbsp; &nbsp; &nbsp; &nbsp; <label> To : </label>
			<%
			try {
				Connection connection = DataBaseUtils.getConnection();
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("SELECT * FROM city");
				;
			%> 
			<select name="to">
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
			<label> Date : </label>
			<input type="date"  name="Flight_Date" value="" min="2021-06-06"
				max="2022-12-31"> &nbsp; &nbsp; &nbsp; &nbsp; 
				<label> Passenger(s) : </label> 
				<input type="number" name="Passenger" value=""min="1" max="12"> 
				<br> <br> <br> 
				<input type="submit" value="SEARCH">
		</form>
	</div>
	<%@include file="Footer.html"%>
</body>
</html>