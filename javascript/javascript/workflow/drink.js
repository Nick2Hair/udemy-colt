var age = prompt("How old are you?");

if(age%Math.sqrt(age)===0) {
  console.log("Your age is a perfect square!");
}
else {console.log("age is not a perfect square");}

if(age<0) {
  console.log("Liar");
}
else if(age<21) {
  console.log("Cant drink mang");
}
else {
  console.log("You can drink!");
}