function isEven(x) {
  if(x%2===0) {
    return true;
  }
  else {
    return false;
  }
}

function factorial(x){
    
    if(x===0) {
      return 1;
    }
    else {
      return x*factorial(x-1);
    }
  }

function kebabToSnake(str) {
  var newStr = str.replace(/-/gi, "_");
  return newStr;
}

console.log("isEven Set");


console.log(isEven(4));

console.log(isEven(21));

console.log(isEven(68));

console.log(isEven(333));


console.log("Factorial Set");


console.log(factorial(5));

console.log(factorial(2));

console.log(factorial(10));

console.log(factorial(0));


console.log("Kebab To Snake");


console.log(kebabToSnake("hello-world"));

console.log(kebabToSnake("dogs-are-awesome"));

console.log(kebabToSnake("blah"));