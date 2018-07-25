var express = require("express");
var app = express();

var knock = require("knock-knock-jokes");

var port = 3000;

//Config lines
app.set("view engine" , "ejs");
app.use(express.static(__dirname + "/public"));

//Route: /jokes
app.get("/" , function(req, res) {
    var joke = knock();
    res.render('home' , {joke: joke});
});

//Post request
app.post("/new_joke" , function(req, res) {
    res.redirect("/");
});

//Route: for errors with routing
app.get("*" , function(req, res) {
    res.send("Oops! Something went wrong!");
});

//Run server on port
app.listen(port, function() {
    console.log("Listening on port "+port);
});