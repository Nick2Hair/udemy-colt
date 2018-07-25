var express = require('express');
var app = express();
var request = require('request');

var port = 3000;

//Config lines
app.set("view engine" , "ejs");
//app.use(bodyParser.urlencoded({extended: true}));
//app.use(express.static(__dirname + "/public"));

//Gets
app.get("/" , function(req, res) {
    res.render("search");
});

app.get("/results" , function(req, res) {
    var search = req.query.search;
    var key = "&apikey=thewdb";
    var query = search+key;
    var url = "http://www.omdbapi.com/?s=" + query;
    request(url , function(error, response, body) {
        if(!error && response.statusCode == 200) {
            var data = JSON.parse(body);
            //console.log(parsedData);
            //res.send(parsedData["Search"][0]["Title"]);
            res.render("results" , {data: data });
        }
    });
});

app.get("*" , function(req, res) {
    res.send("Oops!");
});


//Posts


//Run server on port
app.listen(port, process.env.IP, function() {
    console.log("Listening on port "+port);
    console.log("Movie app started");
});