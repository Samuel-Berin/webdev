function makeAlert() {
  var currentVal= document.getElementById('numValue').innerText;
  alert(currentVal);
}

function increment() {
  var currentVal = parseInt(document.getElementById('numValue').innerText);
  currentVal++;
  document.getElementById('numValue').innerText = currentVal;
}

function newParagraph() {
 var currentVal= document.getElementById('numValue').innerText;
  var newHTML = "<p>" + currentVal + "</p>";
  document.getElementById('paragraphContainer').innerHTML += newHTML;
}
