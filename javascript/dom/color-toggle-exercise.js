var button = document.querySelector("button");
var body = document.querySelector("body");
var isClicked = false;

button.addEventListener("click", function() {
  
  if(!isClicked) {
    body.style.background = "purple";
  }
  else {
    body.style.background = "white";
  }
  isClicked = !isClicked;
});