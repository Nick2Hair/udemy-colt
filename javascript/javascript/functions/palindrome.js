var str = "kayak";
var str2 = "hello";
var str3 = "race car";

function palindrome(str) {

    var innerStr = str.replace(/\s+/g, "");
    
    var pal = "";

    for(var i=innerStr.length; i>=0; i--) {
        pal += innerStr.charAt(i);
    }
        if(pal === innerStr) {
            console.log("You entered a palindrome!");
        }
        else {
            console.log("This is not a palindrome!");
        }
}

palindrome(str);
palindrome(str2);
palindrome(str3);