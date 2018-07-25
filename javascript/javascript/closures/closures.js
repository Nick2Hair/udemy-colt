/*

     Closures

     'similiar to private variables'

    - a function that makes use of variables defined in outer 
    functions that have previously returned

    -We have to 'return;' th einner funciton for this to work
    
    - We Can either call eht inner function right away by using 
    an extra () or we can store the rsult of the function 
    in a variable (very similiar to how bind works)

    -We do NOT have to give the inner funciton a name
    we can make it anonymous (we just called 
        it 'inner' for learning purposes)
*/ 

// function outer() {
//     var data = "Closures are ";
//     return function inner() {
//         var innerData = "awesome";
//         return data + innerData;
//     }
// }

// //console.log(outer()());

// function outer(a) {
//     return function inner(b) {
//         return a+b;
//     }
// }
// console.log(outer(5)(5));

// var storeOuter = outer(5);
// console.log(storeOuter(10));

// function counter() {
//     var count =0;
//     return function() {
//         return ++count;
//     }
// }

// var c = counter();
// console.log(c());

