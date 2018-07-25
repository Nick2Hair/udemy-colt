var input = prompt("Are we there yet?").toUpperCase();

while(input !== "YES" && input !== "YEAH") {
  var input = prompt("Are we there yet?").toUpperCase();
}

alert("yay, we made it!");