<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index.css">
<style>
.button {
  background-color: green; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
}
button:disabled,
button[disabled]{
  background-color: rgb(179, 181, 181);
}
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body {
  background-image: url("parking.jpg");
  margin: 0;
}
</style>
<title>Parking Slot Identification System</title>
</head>
<body>
<div class="head" style="text-align: center; margin-top: 20px;">
<h1>Parking Slot Identification System</h1>
<div style="text-align: right">
<a href="adminlogin.jsp"><button class="button" style="background-color: rgb(189, 85, 161);">Login</button></a>
</div>
    <p>
    <button class="button">Vacant</button>Vacant Slot
    <button class="button" style="background-color: rgb(179, 181, 181);" disabled>Occupied</button>Occupied Slot
    </p>
</div>
<div class="row" style="text-align: center;">
<div class="card col-sm-5" style="margin-left: 10%;">
  <div class="container" style="align-items: center;">
    <h3><b>Ndagani Market</b></h3> 
    <input type="text" id="duration" placeholder="Enter parking duration in minutes">
  	<div class="row">
	  <div class="col">Gate A Lot
	  	<p>
	  	<button class="button" id="slot1" onclick="disableSlot('slot1')">A1</button>
		<button class="button" id="slot2" onclick="disableSlot('slot2')">A2</button>
	   </p>
	   <p>
		  <button class="button" id="slot3" onclick="disableSlot('slot3')">A3</button>
		  <button class="button" id="slot4" onclick="disableSlot('slot4')">A4</button>
	   </p>
	  </div>
	  <div class="col">Gate G Lot
	  	<p>
		  <button class="button" id="slot5" onclick="disableSlot('slot5')">G1</button>
		  <button class="button" id="slot6" onclick="disableSlot('slot6')">G2</button>
		 </p>
		 <p>
		  <button class="button" id="slot7" onclick="disableSlot('slot7')">G3</button>
		  <button class="button" id="slot8" onclick="disableSlot('slot8')">G4</button>
	     </p>
	     <p>
		  <button class="button" id="slot9" onclick="disableSlot('slot9')">G5</button>
		  <button class="button" id="slot10" onclick="disableSlot('slot10')">G6</button>
	     </p>
	  </div>
	  <div class="col">Lowlands Hotel Lot
		 <p>
		  <button class="button" id="slot11" onclick="disableSlot('slot11')">L1</button>
		  <button class="button" id="slot12" onclick="disableSlot('slot12')">L2</button>
		 </p>
	  </div>
	</div>
    <p>Architect and Engineer</p> 
  </div>
</div>
<div class="card col-sm-5">
  <div class="container" style="text-align: center;">
    <h3><b>Chuka Town</b></h3> 
    <input type="text" id="duration" placeholder="Enter Parking duration in minutes">
    <div class="row">
	  <div class="col">Chuka Law Courts Lot
	  	<p>
	  	  <button class="button" id="slot13" onclick="disableSlot('slot13')">CLC1</button>
		  <button class="button" id="slot14" onclick="disableSlot('slot14')">CLC2</button>
	   </p>
	   <p>
		  <button class="button" id="slot15" onclick="disableSlot('slot15')">CLC3</button>
		  <button class="button" id="slot16" onclick="disableSlot('slot16')">CLC4</button>
	   </p>
	  </div>
	  <div class="col">Magunas Lot
	  	<p>
		  <button class="button" id="slot17" onclick="disableSlot('slot17')">M1</button>
		  <button class="button" id="slot18" onclick="disableSlot('slot18')">M2</button>
		 </p>
		 <p>
		  <button class="button" id="slot19" onclick="disableSlot('slot19')">M3</button>
		  <button class="button" id="slot20" onclick="disableSlot('slot20')">M4</button>
	     </p>
	     <p>
		  <button class="button" id="slot21" onclick="disableSlot('slot21')">M5</button>
		  <button class="button" id="slot22" onclick="disableSlot('slot22')">M6</button>
	     </p>
	  </div>
	</div>
    <p>Architect and Engineer</p> 
  </div>
</div>
</div>


<script src="index.js"></script>

</body>
</html>