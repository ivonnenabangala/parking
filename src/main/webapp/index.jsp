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
    <h3><b>Tom Mboya Street</b></h3> 
    <input type="text" id="duration" placeholder="Parking duration in seconds">
  	<div class="row">
	  <div class="col">Lot 1
	  	<p>
	  	<button class="button" id="slot1" onclick="disableSlot('slot1')">Slot 1</button>
		<button class="button" id="slot2" onclick="disableSlot('slot2')">Slot 2</button>
	   </p>
	   <p>
		  <a href="register.jsp"><button class="button" id="t3">slot3</button></a>
		  <a href="register.jsp"><button class="button" id="t4">slot4</button></a>
	   </p>
	  </div>
	  <div class="col">Lot 2
	  	<p>
		  <a href="register.jsp"><button class="button" id="t5">slot5</button></a>
		  <a href="register.jsp"><button class="button" id="t6">slot6</button></a>
		 </p>
		 <p>
		  <a href="register.jsp"><button class="button" id="t7">slot7</button></a>
		  <a href="register.jsp"><button class="button" id="t8">slot8</button></a>
	     </p>
	     <p>
		  <a href="register.jsp"><button class="button" id="t9">slot9</button></a>
		  <a href="register.jsp"><button class="button" id="t10">slot10</button></a>
	     </p>
	  </div>
	  <div class="col">Lot 3
		 <p>
		  <a href="register.jsp"><button class="button" id="t11">slot11</button></a>
		  <a href="register.jsp"><button class="button" id="t12">slot12</button></a>
		 </p>
	  </div>
	</div>
    <p>Architect and Engineer</p> 
  </div>
</div>
<div class="card col-sm-5">
  <div class="container" style="text-align: center;">
    <h3><b>Kimathi Street</b></h3> 
    <div class="row">
	  <div class="col">Cars
	  	<p>
	  	  <a href="registration.html"><button class="button">slot1</button></a>
		  <a href="register.jsp"><button class="button">slot2</button></a>
	   </p>
	   <p>
		  <a href="register.jsp"><button class="button">slot3</button></a>
		  <a href="register.jsp"><button class="button">slot4</button></a>
	   </p>
	  </div>
	  <div class="col">Motorbikes/bicycles
	  	<p>
		  <a href="register.jsp"><button class="button">slot5</button></a>
		  <a href="register.jsp"><button class="button">slot6</button></a>
		 </p>
		 <p>
		  <a href="register.jsp"><button class="button">slot7</button></a>
		  <a href="register.jsp"><button class="button">slot8</button></a>
	     </p>
	     <p>
		  <a href="register.jsp"><button class="button">slot9</button></a>
		  <a href="register.jsp"><button class="button">slot10</button></a>
	     </p>
	  </div>
	  <div class="col">Trucks
		 <p>
		  <a href="register.jsp"><button class="button">slot11</button></a>
		  <a href="register.jsp"><button class="button">slot12</button></a>
		 </p>
	  </div>
	</div>
    <p>Architect and Engineer</p> 
  </div>
</div>
<div class="card col-sm-5">
  <div class="container" style="text-align: center;">
    <h3><b>Haile Selassie Avenue</b></h3> 
    <div class="row">
	  <div class="col">Cars
	   <p>
		  <a href="register.jsp"><button class="button">slot3</button></a>
		  <a href="register.jsp"><button class="button">slot5</button></a>
	   </p>
	  </div>
	  
    <p>Architect and Engineer</p> 
  </div>
</div>
</div>
</div>


<script>
  function disableSlot(slotId) {
    var slot = document.getElementById(slotId);
    var duration = document.getElementById('duration').value;
    if (!duration) { // if no duration is entered, use default duration of 5 seconds
      duration = 5;
    }
    slot.disabled = true; // disable the slot button
    window.location.href = "http://localhost:8081/parking/register.jsp"; 
    var timestamp = new Date().getTime(); // get the current timestamp
    localStorage.setItem(slotId, timestamp + ',' + duration); // set a local storage item with the slot id as the key and the timestamp and duration as the value
    setTimeout(function() {
      slot.disabled = false; // enable the slot button after the duration has elapsed
      localStorage.removeItem(slotId); // remove the local storage item for the slot id
    }, duration * 1000); // convert duration from seconds to milliseconds
  }
  
  // check local storage on page load
  window.onload = function() {
    var slot1 = localStorage.getItem('slot1');
    var now = new Date().getTime();
    if (slot1) {
      var slot1Array = slot1.split(',');
      var slot1Timestamp = parseInt(slot1Array[0]);
      var slot1Duration = parseInt(slot1Array[1]);
      if (now - slot1Timestamp < slot1Duration * 1000) { // if the slot was disabled less than the duration time ago
        document.getElementById('slot1').disabled = true;
        setTimeout(function() {
          document.getElementById('slot1').disabled = false;
          localStorage.removeItem('slot1');
        }, slot1Duration * 1000 - (now - slot1Timestamp)); // calculate the remaining time to wait before enabling the slot button again
      }
    }
  }
</script>

</body>
</html>