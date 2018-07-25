var express = require("express");
var app = express();
var port = 3000;

// / Route
app.get("/" , function(req, res) {
    res.send("Hi there, welcome to my assignment!");
});
/*
//Wet code
// // /speak/pig
// app.get("/speak/pig/" , function(req, res) {
//     res.send("The pig says 'Oink!'");
// });

// // /speak/cow/
// app.get("/speak/cow/" , function(req, res) {
//     res.send("The cow says 'Moo'");
// });

// // /speak/dog/
// app.get("/speak/dog/" , function(req, res) {
//     res.send("The dog says, 'Woof Woof'");
// });
*/

//Dry Code

app.get("/speak/:animal/" , function(req, res) {
    
    var sounds = {
        pig: "Oink",
        cow: "Moo",
        dog: "Woof Woof",
        cat: "I hate humans",
        goldfish: "..."
    };
    var animal = req.params.animal.toLowerCase();
    var sound = sounds[animal];

    res.send("The "+animal + " says \""+sound+"\"");
});

//Repeated routes
app.get("/repeat/:anything/:numOfTimes/" , function(req, res) {
    
    // console.log(req.params);
    // console.log(req.params.anything);
    // console.log(req.params.numOfTimes);

    var i = 0;
    var anything = "";
    var num = Number(req.params.numOfTimes);

    while(i<num) {
        anything += req.params.anything +" ";
        i++;
    }
    res.send(anything);

});

// Catch for mistakes
app.get("*" , function(req, res) {
    res.send("Sorry, page not found.." +
    "What are you doing with your life?");
}); 

//Tell express to listen for reqs (start server);
app.listen(port, process.env.IP, function() {
    console.log("Server has started on: " +port);
});

