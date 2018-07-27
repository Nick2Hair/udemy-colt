const express = require('express');
const app = express();
const bodyParser = require('body-parser');


app.use(bodyParser.urlencoded({extended: true}));

app.set('view engine' , 'ejs');

let campgrounds = [
    {name: "Salmon Creek" , image: 'https://pixabay.com/get/e837b1072af4003ed1584d05fb1d4e97e07ee3d21cac104496f2c679a3eab7be_340.jpg'},
    {name: "Granite Hill" , image: 'https://pixabay.com/get/e83db50a21f4073ed1584d05fb1d4e97e07ee3d21cac104496f2c679a3eab7be_340.jpg'},
    {name: "Mountain Goat's Rest" , image: 'https://farm7.staticflickr.com/6089/6094103869_d53a990c83.jpg'}

];

app.get('/' , (req, res) => {
    res.render('landing');
});

app.get('/campgrounds' , (req, res) => {
    res.render("campgrounds" , {campgrounds: campgrounds});
});

app.post("/campgrounds" , (req, res) => {
    //get data from from and add to campgrounds array
    let name = req.body.name;
    let image = req.body.image;
    let newCampground = { name: name , image: image };
    campgrounds.push(newCampground);
    //redirect back to campgrounds page
  res.redirect("/campgrounds");
});

app.get('/campgrounds/new' , (req, res) => {
    res.render("new.ejs");
});

app.listen(3000);



