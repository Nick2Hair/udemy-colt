
var scores = [90, 98, 89, 100, 100, 86, 94];

var scores2 = [40, 65, 77, 82, 80, 54, 73, 63, 95, 49];

function avg(arr) {

    var l = arr.length;
    var sum = arr.reduce((a,b) => a+b);
    var avg = Math.round(sum / l);

    console.log(avg);

}

avg(scores);
avg(scores2);