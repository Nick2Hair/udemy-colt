var count=-10;

console.log("Print all # between -10 and 20");
while(count<20) {
  console.log(count);
  count+=1;
}


console.log("Print all even # between 10 and 40");

var count=10
while(count<=40) {
  console.log(count);
  count+=2;
}

console.log("Print all odd # between 300 and 333");

var count=301;
while(count<=333) {
  console.log(count);
  count+=2;
}

console.log("Print all #  divisible by 5 and 3 between 5 and 50");

var count=5;
while(count<=50) {
  if(count%5===0 && count%3===0) {
    console.log(count);
  }
  count+=1;
}