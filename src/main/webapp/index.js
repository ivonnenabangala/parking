//Function to occupy and free up slot
function disableSlot(slotId) {
    var slot = document.getElementById(slotId);
    var duration = document.getElementById('duration').value;
    if (!duration) { // if no duration is entered, use default duration of 5 seconds
      duration = 1;
    }
    slot.disabled = true; // disable the slot button
    window.location.href = "http://localhost:8081/parking/register.jsp"; 
    var timestamp = new Date().getTime(); // get the current timestamp
    localStorage.setItem(slotId, timestamp + ',' + duration); // set a local storage item with the slot id as the key and the timestamp and duration as the value
    setTimeout(function() {
      slot.disabled = false; // enable the slot button after the duration has elapsed
      localStorage.removeItem(slotId); // remove the local storage item for the slot id
    }, duration * 60000); // convert duration from minutes to milliseconds
  }
  
  // check local storage on page load
  window.onload = function() {
    var slot1 = localStorage.getItem('slot1');
    var slot2 = localStorage.getItem('slot2');
    var slot3 = localStorage.getItem('slot3');
    var slot4 = localStorage.getItem('slot4');
    var slot5 = localStorage.getItem('slot5');
    var slot6 = localStorage.getItem('slot6');
    var slot7 = localStorage.getItem('slot7');
    var slot8 = localStorage.getItem('slot8');
    var slot9 = localStorage.getItem('slot9');
    var slot10 = localStorage.getItem('slot10');
    var slot11 = localStorage.getItem('slot11');
    var slot12 = localStorage.getItem('slot12');
    var slot13 = localStorage.getItem('slot13');
    var slot14 = localStorage.getItem('slot14');
    var slot15 = localStorage.getItem('slot15');
    var slot16 = localStorage.getItem('slot16');
    var slot17 = localStorage.getItem('slot17');
    var slot18 = localStorage.getItem('slot18');
    var slot19 = localStorage.getItem('slot19');
    var slot20 = localStorage.getItem('slot20');
    var slot21 = localStorage.getItem('slot21');
    var slot22 = localStorage.getItem('slot22');
    var now = new Date().getTime();
    if (slot1) {
      var slot1Array = slot1.split(',');
      var slot1Timestamp = parseInt(slot1Array[0]);
      var slot1Duration = parseInt(slot1Array[1]);
      if (now - slot1Timestamp < slot1Duration * 60000) { // if the slot was disabled less than the duration time ago
        document.getElementById('slot1').disabled = true;
        setTimeout(function() {
          document.getElementById('slot1').disabled = false;
          localStorage.removeItem('slot1');
        }, slot1Duration * 60000 - (now - slot1Timestamp)); // calculate the remaining time to wait before enabling the slot button again
      }
    }
    
    if (slot2) {
      var slot2Array = slot2.split(',');
      var slot2Timestamp = parseInt(slot2Array[0]);
      var slot2Duration = parseInt(slot2Array[1]);
      if (now - slot2Timestamp < slot2Duration * 60000) {
        document.getElementById('slot2').disabled = true;
        setTimeout(function() {
          document.getElementById('slot2').disabled = false;
          localStorage.removeItem('slot2');
        }, slot2Duration * 60000 - (now - slot2Timestamp));
      }
    }
    
    if (slot3) {
      var slot3Array = slot3.split(',');
      var slot3Timestamp = parseInt(slot3Array[0]);
      var slot3Duration = parseInt(slot3Array[1]);
      if (now - slot3Timestamp < slot3Duration * 60000) {
        document.getElementById('slot3').disabled = true;
        setTimeout(function() {
          document.getElementById('slot3').disabled = false;
          localStorage.removeItem('slot3');
        }, slot3Duration * 60000 - (now - slot3Timestamp));
      }
    }
    
    if (slot4) {
      var slot4Array = slot4.split(',');
      var slot4Timestamp = parseInt(slot4Array[0]);
      var slot4Duration = parseInt(slot4Array[1]);
      if (now - slot4Timestamp < slot4Duration * 60000) {
        document.getElementById('slot4').disabled = true;
        setTimeout(function() {
          document.getElementById('slot4').disabled = false;
          localStorage.removeItem('slot4');
        }, slot4Duration * 60000 - (now - slot4Timestamp));
      }
    }
    
    if (slot5) {
      var slot5Array = slot5.split(',');
      var slot5Timestamp = parseInt(slot5Array[0]);
      var slot5Duration = parseInt(slot5Array[1]);
      if (now - slot5Timestamp < slot5Duration * 60000) {
        document.getElementById('slot5').disabled = true;
        setTimeout(function() {
          document.getElementById('slot5').disabled = false;
          localStorage.removeItem('slot5');
        }, slot5Duration * 60000 - (now - slot5Timestamp));
      }
    }
    
    if (slot6) {
      var slot6Array = slot6.split(',');
      var slot6Timestamp = parseInt(slot6Array[0]);
      var slot6Duration = parseInt(slot6Array[1]);
      if (now - slot6Timestamp < slot6Duration * 60000) {
        document.getElementById('slot6').disabled = true;
        setTimeout(function() {
          document.getElementById('slot6').disabled = false;
          localStorage.removeItem('slot6');
        }, slot6Duration * 60000 - (now - slot6Timestamp));
      }
    }
    
    if (slot7) {
      var slot7Array = slot7.split(',');
      var slot7Timestamp = parseInt(slot7Array[0]);
      var slot7Duration = parseInt(slot7Array[1]);
      if (now - slot7Timestamp < slot7Duration * 60000) {
        document.getElementById('slot7').disabled = true;
        setTimeout(function() {
          document.getElementById('slot7').disabled = false;
          localStorage.removeItem('slot7');
        }, slot7Duration * 60000 - (now - slot7Timestamp));
      }
    }
    
    if (slot8) {
      var slot8Array = slot8.split(',');
      var slot8Timestamp = parseInt(slot8Array[0]);
      var slot8Duration = parseInt(slot8Array[1]);
      if (now - slot8Timestamp < slot8Duration * 60000) {
        document.getElementById('slot8').disabled = true;
        setTimeout(function() {
          document.getElementById('slot8').disabled = false;
          localStorage.removeItem('slot8');
        }, slot8Duration * 60000 - (now - slot8Timestamp));
      }
    }
    
    if (slot9) {
      var slot9Array = slot9.split(',');
      var slot9Timestamp = parseInt(slot9Array[0]);
      var slot9Duration = parseInt(slot9Array[1]);
      if (now - slot9Timestamp < slot9Duration * 60000) {
        document.getElementById('slot9').disabled = true;
        setTimeout(function() {
          document.getElementById('slot9').disabled = false;
          localStorage.removeItem('slot9');
        }, slot9Duration * 60000 - (now - slot9Timestamp));
      }
    }
    
    if (slot10) {
      var slot10Array = slot10.split(',');
      var slot10Timestamp = parseInt(slot10Array[0]);
      var slot10Duration = parseInt(slot10Array[1]);
      if (now - slot10Timestamp < slot10Duration * 60000) {
        document.getElementById('slot10').disabled = true;
        setTimeout(function() {
          document.getElementById('slot10').disabled = false;
          localStorage.removeItem('slot10');
        }, slot10Duration * 60000 - (now - slot10Timestamp));
      }
    }
    
    if (slot11) {
      var slot11Array = slot11.split(',');
      var slot11Timestamp = parseInt(slot11Array[0]);
      var slot11Duration = parseInt(slot11Array[1]);
      if (now - slot11Timestamp < slot11Duration * 60000) {
        document.getElementById('slot11').disabled = true;
        setTimeout(function() {
          document.getElementById('slot11').disabled = false;
          localStorage.removeItem('slot11');
        }, slot11Duration * 60000 - (now - slot11imestamp));
      }
    }
    
    if (slot12) {
      var slot12Array = slot12.split(',');
      var slot12Timestamp = parseInt(slot12Array[0]);
      var slot12Duration = parseInt(slot12Array[1]);
      if (now - slot12Timestamp < slot12Duration * 60000) {
        document.getElementById('slot12').disabled = true;
        setTimeout(function() {
          document.getElementById('slot12').disabled = false;
          localStorage.removeItem('slot12');
        }, slot4Duration * 60000 - (now - slot4Timestamp));
      }
    }
    
    if (slot13) {
      var slot13Array = slot13.split(',');
      var slot13Timestamp = parseInt(slot13Array[0]);
      var slot13Duration = parseInt(slot13Array[1]);
      if (now - slot13Timestamp < slot13Duration * 60000) {
        document.getElementById('slot13').disabled = true;
        setTimeout(function() {
          document.getElementById('slot13').disabled = false;
          localStorage.removeItem('slot13');
        }, slot13Duration * 60000 - (now - slot13Timestamp));
      }
    }
    
    if (slot14) {
      var slot14Array = slot14.split(',');
      var slot14Timestamp = parseInt(slot14Array[0]);
      var slot14Duration = parseInt(slot14Array[1]);
      if (now - slot14Timestamp < slot14Duration * 60000) {
        document.getElementById('slot14').disabled = true;
        setTimeout(function() {
          document.getElementById('slot14').disabled = false;
          localStorage.removeItem('slot14');
        }, slot14Duration * 60000 - (now - slot14Timestamp));
      }
    }
    
    if (slot15) {
      var slot15Array = slot15.split(',');
      var slot15Timestamp = parseInt(slot15Array[0]);
      var slot15Duration = parseInt(slot15Array[1]);
      if (now - slot15Timestamp < slot15Duration * 60000) {
        document.getElementById('slot15').disabled = true;
        setTimeout(function() {
          document.getElementById('slot15').disabled = false;
          localStorage.removeItem('slot15');
        }, slot15Duration * 60000 - (now - slot15Timestamp));
      }
    }
    
    if (slot16) {
      var slot16Array = slot16.split(',');
      var slot16Timestamp = parseInt(slot16Array[0]);
      var slot16Duration = parseInt(slot16Array[1]);
      if (now - slot16Timestamp < slot16Duration * 60000) {
        document.getElementById('slot16').disabled = true;
        setTimeout(function() {
          document.getElementById('slot16').disabled = false;
          localStorage.removeItem('slot16');
        }, slot16Duration * 60000 - (now - slot4Timestamp));
      }
    }
    
    if (slot17) {
      var slot17Array = slot17.split(',');
      var slot17Timestamp = parseInt(slot17Array[0]);
      var slot17Duration = parseInt(slot17Array[1]);
      if (now - slot17Timestamp < slot17Duration * 60000) {
        document.getElementById('slot17').disabled = true;
        setTimeout(function() {
          document.getElementById('slot17').disabled = false;
          localStorage.removeItem('slot17');
        }, slot17Duration * 60000 - (now - slot17Timestamp));
      }
    }
    
    if (slot18) {
      var slot18Array = slot18.split(',');
      var slot18Timestamp = parseInt(slot18Array[0]);
      var slot18Duration = parseInt(slot18Array[1]);
      if (now - slot18Timestamp < slot18Duration * 60000) {
        document.getElementById('slot18').disabled = true;
        setTimeout(function() {
          document.getElementById('slot18').disabled = false;
          localStorage.removeItem('slot18');
        }, slot18Duration * 60000 - (now - slot18Timestamp));
      }
    }
    
    if (slot19) {
      var slot19Array = slot19.split(',');
      var slot19Timestamp = parseInt(slot19Array[0]);
      var slot19Duration = parseInt(slot19Array[1]);
      if (now - slot19Timestamp < slot19Duration * 60000) {
        document.getElementById('slot19').disabled = true;
        setTimeout(function() {
          document.getElementById('slot19').disabled = false;
          localStorage.removeItem('slot19');
        }, slot19Duration * 60000 - (now - slot19Timestamp));
      }
    }
    
    if (slot20) {
      var slot20Array = slot20.split(',');
      var slot20Timestamp = parseInt(slot20Array[0]);
      var slot20Duration = parseInt(slot20Array[1]);
      if (now - slot20Timestamp < slot20Duration * 60000) {
        document.getElementById('slot20').disabled = true;
        setTimeout(function() {
          document.getElementById('slot20').disabled = false;
          localStorage.removeItem('slot20');
        }, slot20Duration * 60000 - (now - slot20Timestamp));
      }
    }
    
    if (slot21) {
      var slot21Array = slot21.split(',');
      var slot21Timestamp = parseInt(slot21Array[0]);
      var slot21Duration = parseInt(slot21Array[1]);
      if (now - slot21Timestamp < slot21Duration * 60000) {
        document.getElementById('slot21').disabled = true;
        setTimeout(function() {
          document.getElementById('slot21').disabled = false;
          localStorage.removeItem('slot21');
        }, slot21Duration * 60000 - (now - slot21Timestamp));
      }
    }
    
    if (slot22) {
      var slot22Array = slot22.split(',');
      var slot22Timestamp = parseInt(slot22Array[0]);
      var slot22Duration = parseInt(slot22Array[1]);
      if (now - slot22Timestamp < slot22Duration * 60000) {
        document.getElementById('slot22').disabled = true;
        setTimeout(function() {
          document.getElementById('slot22').disabled = false;
          localStorage.removeItem('slot22');
        }, slot22Duration * 60000 - (now - slot22Timestamp));
      }
    }
  }