console.log("Mini max sum \n\n");

var arr = [1,2,3,4,5];


var reducer = (acc, val) => acc+val;
var sum = arr.reduce(reducer);

console.log(sum);