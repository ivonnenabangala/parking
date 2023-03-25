<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index.css">
<style>
	input{
		border: 2px solid rgb(77, 222, 227);
        border-radius: 4px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div class="card" style="margin-top: 72px;">
      <div class="container" style="align-items: center;">
		<form action="AddSlots" method="post" style="padding: 50px;">
			<h2>Slot Reservation Form</h2>
			 <table style="border-spacing: 0 12px;">
			 <tr>
			 <td>Full Name</td>
			 <td><input type="text" name="name"></td>
			 </tr>
			 <tr>
			 <td>Phone Number</td>
			 <td><input type="text" name="contact" placeholder="07..."></td>
			 </tr>
			 <tr>
			 <td>Parking Street</td>
			 <td>
			 <select name="street" id="street">
				<option value="tomMboya">Tom Mboya</option>
				<option value="kenyatta">Kenyatta</option>
				<option value="haileSelassie">Haile Selassie</option>
			 </select>
			 </td>
			 </tr>
			 <tr>
			 <td>Vehicle Type</td>
			 <td>
			 <select name="vehicleType" id="vehicleType">
				<option value="car">Car</option>
				<option value="bike">Motorbike/Bicycle</option>
				<option value="truck">Truck</option>
			 </select>
			 </td>
			 </tr>
			 <tr>
			 <td>Plate Number</td>
			 <td><input type="text" name="plateNo"></td>
			 </tr>
			 <tr>
			 <tr>
			 <td>Submit</td>
			 <td><input type="submit" value="register"></td>
			 </tr>
			 </table>
	 </form>
 </div>
 </div>
 </div>
</body>
</html>