<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

input[type=password], select, textarea {
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
</style>
<title>Admin</title>
</head>
	<%@include file="Header.html"%>
	
	<ul>
   <li><a class="active" href="Index.jsp">Home Page</a></li>
  <li><a href="admin.jsp">Admin Login</a></li>
  <li><a href="logout">Logout</a></li>
</ul>

<div class="container" align="center">
	<form action="SecuredServlet" method="get">
		<h2 align="center">Please login</h2>
		<h3>Admin :</h3>
		<input type="text" name="adminname"><br>
		<h3>Password:</h3>
		<input type="password" name="password"> <br><br>
<input type="submit" value="LOGIN">
	</form>
</div>
	<%@include file="Footer.html"%>
</body>
</html>