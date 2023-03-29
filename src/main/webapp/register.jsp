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
	select{
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
		<form action="Register" method="post" style="padding: 20px;">
			<h2>Slot Reservation Form</h2>
			<img src="slots.jpg" alt="Slots" style="width:auto;height:170px;margin-right:15px;">
			 <table style="border-spacing: 0 12px;">
			 <tr>
			 <td>Full Name</td>
			 <td><input type="text" name="name" required></td>
			 </tr>
			 <tr>
			 <td>Phone Number</td>
			 <td><input type="text" name="contact" required></td>
			 </tr>
			 <tr>
			 <td>Parking Lot</td>
			 <td>
			 <select name="street" id="street" required>
				<option value="Stage">Stage</option>
				<option value="Gate-G">Gate G</option>
				<option value="Lowlands">Lowlands Hotel</option>
				<option value="Courts">Chuka Law Courts</option>
				<option value="Magunas">Magunas</option>
			 </select>
			 </td>
			 </tr>
			 <tr>
			 <td>Vehicle Type</td>
			 <td>
			 <select name="vehicleType" id="vehicleType" required>
				<option value="car">Car</option>
				<option value="truck">Truck</option>
			 </select>
			 </td>
			 </tr>
			 <tr>
			 <td>Plate Number</td>
			 <td><input type="text" name="plateNo" required></td>
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