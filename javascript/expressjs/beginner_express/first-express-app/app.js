
var express = require('express');
var app = express();
var port = 3000;
// => Hi there!

//Order of routes matter!

app.get("/" , function(req, res) {
    res.send("Hi there!");
});

// /bye => goodbye!
app.get("/bye" , function(req, res) {
    res.send("Goodbye!");
});

// /dog => Meow!
app.get("/dog" , function(req, res) {
    res.send("MEOW!");
});

//Route parameters add a :
app.get("/r/:subredditName" , function(req, res) {
    var subreddit = req.params.subredditName;
    res.send("Welcome to the " +subreddit.toUpperCase()+ " subreddit!");
});

// Using Route Parameters with longer routes
app.get("/r/:subredditName/comments/:id/:title/" , 
function(req, res) {
    console.log(req.params);
    res.send("Welcome to the comments page!");
});


// Catch for mistakes
app.get("*" , function(req, res) {
    res.send("You are a star!");
}); 



//Tell express to listen for reqs (start server);
app.listen(port, process.env.IP, function() {
    console.log("Server has started on: " +port);
});