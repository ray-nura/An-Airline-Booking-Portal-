<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</style>

<title>FlyAwayRegister</title>
</head>
<body>
	<%@include file="Header.html"%>

	<%
	String FlightID = request.getParameter("flight_ID");
	String Flight_Numb = request.getParameter("flight_numb");
	String Airlines = request.getParameter("airlines");
	String Departure = request.getParameter("departure");
	String Arrival = request.getParameter("arrival");
	String Flight_Date = request.getParameter("flight_date");
	String Flight_Time = request.getParameter("flight_time");
	String Duration = request.getParameter("duration");
	String Price = request.getParameter("price");
	String Passenger = request.getParameter("passenger");
	int price_int = Integer.parseInt(request.getParameter("price").trim());
	int passengers_int = Integer.parseInt(request.getParameter("passenger").trim());
	String id = request.getParameter("id");

	int total_price = price_int * passengers_int;
	Integer tp=total_price;
	tp.toString();
	%>

	
	<h1 style="text-align: center">Please Enter Passenger Information</h1>
	<div class="container">

		<form action="payment.jsp" method="post">
		<input type="hidden" name="flight_ID" value=<%=FlightID%>>
		<label>Flight Number : </label>
		<Input type="text" name="Flight_Numb" value = "<%=Flight_Numb %>" readonly> &nbsp; &nbsp;
		<label>Airlines : </label>
		<Input type="text" name="Airlines" value = "<%=Airlines %>" readonly> <br><br>
		<label>From : </label>
		<Input type="text" name="Departure" value = "<%=Departure %>" readonly> &nbsp; &nbsp; &nbsp; &nbsp;
		<label>To : </label>
		<Input type="text" name="Arrival" value = "<%=Arrival %>" readonly> <br><br>
		<label>Date : </label>
		<Input type="text" name="Flight_Date" value = "<%=Flight_Date %>" readonly> &nbsp; &nbsp;
		<label> Time :</label>
		<Input type="text" name="Flight_Time" value = "<%=Flight_Time %>" readonly> &nbsp; &nbsp;
		<label>Duration :</label>
		<Input type="text" name="Duration" value = "<%=Duration %>" readonly> <br><br>
		<label>Price : </label>
		<Input type="text" name="Price" value = "<%=Price %>" readonly> &nbsp; &nbsp;
		<label>Passenger : </label>
		<Input type="text" name="Passenger" value = "<%=Passenger %>" readonly> &nbsp; &nbsp;
		<label>Total Price : </label>
		<Input type="text" name="total_price" value = "<%=tp %>" readonly> <br><br>
		<label>First Name : </label> 
		<Input type="text" placeholder="First name" name="firstname" required> &nbsp;&nbsp; 
		<label>Last Name : </label> 
		<Input type="text" placeholder="Last name" name="lastname" required> <br><br> 
		<label>Phone Number : </label> 
		<Input type="text" placeholder="Phone number" name="phone" required> &nbsp; &nbsp; 
		<label>Email :</label> 
		<Input type="text" placeholder="Email" name="email" required> <br><br> <br> 
		<input type="submit" value="CONTINUE">
		</form>
	</div>
	<%@include file="Footer.html"%>
</body>
</html>