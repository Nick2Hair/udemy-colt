var express = require('express');
var app = express();
var bodyParser = require("body-parser");


var port = 3000;

var friends = ["Tony" , "Miranda" , "Justin" , 
                  "Pierre" , "Lily"];

//CONFIG
app.use(express.static("public"));
app.use(bodyParser.urlencoded({extended: true}));
app.set("view engine" , "ejs");

//GET
app.get("/" , function(req, res) {
    res.render("home");
});

app.get("/friends" , function(req, res) {
   
    res.render("friends" , {friends: friends});
});

app.get("*" , function(req, res) {
    res.send("Oops!");
});

//POST
app.post("/addfriend" , function(req, res) {
    var newFriend = req.body.newfriend;
    
    friends.push(newFriend);

    res.redirect("friends");
});

//LISTEN
app.listen(port, process.env.IP , function() {
    console.log("Server starting on port: "+port);
});