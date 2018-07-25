var express = require('express');
var mysql = require("mysql");
var bodyParser = require("body-parser");
var faker = require("faker");
var knock = require('knock-knock-jokes');

var app = express();

var port = 3000;

//Config lines
app.set("view engine" , "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

//Connect to MySQL
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'colt_mysql'
});

//Route: /
app.get("/", function(req, res){
    // Find count of users in DB
    var q = "SELECT COUNT(*) AS count FROM email_users";
    connection.query(q, function(err, results){
        if(err) throw err;
        var count = results[0].count; 
        res.render("home", {count: count});
    });
});

app.post("/register", function(req, res){
    var person = {
        email: req.body.email
    };

    connection.query('INSERT INTO email_users SET ?', person, function(err, result) {
        if (err) throw err;
        res.redirect("/");
    });
});

//Route: /jokes
app.get("/jokes" , function(req, res) {
    var joke = knock();
    res.send(joke);
});

//Route: /randomNum
app.get('/randomNum' , function(req, res) {
    var num = Math.floor(Math.random() * 10)+1;
    res.send("Your lucky number is "+num);
});

//Route: for errors with routing
app.get("*" , function(req, res) {
    res.send("Oops! Something went wrong!");
});

//Run server on port
app.listen(port, function() {
    console.log("Listening on port "+port);
});