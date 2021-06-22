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
<title>Payment</title>
</head>
<body>
	<%@include file="Header.html"%>
	
	<%
	String FlightID = request.getParameter("flight_ID");
	String Flight_Numb = request.getParameter("Flight_Numb");
	String Airlines = request.getParameter("Airlines");
	String Departure = request.getParameter("Departure");
	String Arrival = request.getParameter("Arrival");
	String Flight_Date = request.getParameter("Flight_Date");
	String Flight_Time = request.getParameter("Flight_Time");
	String Duration = request.getParameter("Duration");
	String Price = request.getParameter("Price");
	String Passenger = request.getParameter("Passenger");
	String Total_Price = request.getParameter("total_price");
	String First_Name = request.getParameter("firstname");
	String Last_Name = request.getParameter("lastname");
	String Phone_number = request.getParameter("phone");
	String Email = request.getParameter("email");
	%>

	<h1 style="text-align: center">Flight and Passenger Details</h1>
	<div class="container">
		<form action="Payment" method="post">
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
		<Input type="text" name="total_price" value = "<%=Total_Price %>" readonly> <br><br>
		<label>First Name : </label> 
		<Input type="text"name="firstname" value = "<%=First_Name %>" readonly> &nbsp; &nbsp; &nbsp; &nbsp;
		<label>Last Name : </label> 
		<Input type="text" name="lastname" value = "<%=Last_Name %>" readonly> <br><br> 
		<label>Phone Number : </label> 
		<Input type="text" name="phone" value = "<%=Phone_number %>" readonly> &nbsp; &nbsp; &nbsp; &nbsp;
		<label>Email :</label> 
		<Input type="text" name="email" value = "<%=Email %>" readonly> <br><br> 
	
		<h1 style="text-align: center">Please Enter Payment Info</h1>	
		<br> 
		<label>Credit Card : </label>  &nbsp; &nbsp; 
		<input type="radio" name=type_of_card value="debit"> DEBIT &nbsp; &nbsp; 
		<input type="radio" name=type_of_card value="credit"> CREDIT   <br><br> 
		<label>Credit Card Number : </label>
		<input id="ccn" type="tel" inputmode="numeric" name="card_no" pattern="[0-9\s]{13,19}" autocomplete="cc-number" 
				maxlength="19" placeholder="xxxx xxxx xxxx xxxx" style="width: 170px"> &nbsp; &nbsp; 
		<label>CVC :</label>
		<input id="cvc" type="text" name="cvc_no" placeholder="CVC"> &nbsp; &nbsp;
		<label>Expiration Date: </label>
		<input type="text" name="exp_date" placeholder="Exp date"> <br>
		<input type="submit" value="Pay">
		</form>
</div>
		<%@include file="Footer.html"%>
</body>
</html>