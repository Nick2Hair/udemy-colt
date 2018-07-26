const express = require('express');
const app = express();



app.set('view engine' , 'ejs');

app.get('/' , (req, res) => {
    res.render('landing');
});

app.get('/campgrounds' , (req, res) => {
    let campgrounds = [
        {name: "Salmon Creek" , image: 'https://pixabay.com/get/e837b1072af4003ed1584d05fb1d4e97e07ee3d21cac104496f2c778a6ecb4b0_340.jpg'},
        {name: "Granite Hill" , image: 'https://pixabay.com/get/e83db40e28fd033ed1584d05fb1d4e97e07ee3d21cac104496f2c778a6ecb4b0_340.jpg'},
        {name: "Mountain Goat's Rest" , image: 'https://farm7.staticflickr.com/6089/6094103869_d53a990c83.jpg'}

    ];

    res.render("campgrounds" , {campgrounds: campgrounds});
});

app.listen(3000);



