const express       = require('express'),
      app           = express(),
      bodyParser    = require('body-parser'),
      mongoose      = require('mongoose');

//Connect to Mongodb
mongoose.connect("mongodb://localhost/yelp_camp");

//Middleware
app.use(bodyParser.urlencoded({extended: true}));
app.set('view engine' , 'ejs');

//Schema Setup
const campgroundSchema = new mongoose.Schema({
    name: String,
    image: String,
    description: String
});

const Campground = mongoose.model("Campground", campgroundSchema);

// Campground.create({
//     name: "Granite Hill", 
//     image: 'https://farm7.staticflickr.com/6089/6094103869_d53a990c83.jpg',
//     description: "This is a huge Granite hill"
// }, (err, campground) => {
//     if(err) {
//         console.log(err);
//     }else {
//         console.log("New Campground");
//         console.log(campground);
//     }
// });

app.get('/' , (req, res) => {
    res.render('landing');
});

app.get('/campgrounds' , (req, res) => {
    //Get all campgrounds from DB
    Campground.find({} , (err, allCampgrounds) => {
        if(err) {
            console.log(err);
        }else {
            res.render("index" , {campgrounds: allCampgrounds});
        }
    });
});

app.post("/campgrounds" , (req, res) => {
    //get data from from and add to campgrounds array
    let name = req.body.name;
    let image = req.body.image;
    let description = req.body.description;
    let newCampground = { name: name , image: image , description: description };
    Campground.create(newCampground, (err, newlyCreated) => {
        if(err) {
            console.log(err);
        }else {
            res.redirect("/campgrounds");
        }
    });
});

app.get("/campgrounds/new" , (req, res) => {
    res.render("new.ejs");
});

app.get("/campgrounds/:id" , (req, res) => {
    //Find the campground with the provided id
    Campground.findById(req.params.id, (err, foundCampground) => {
        if(err) {
            console.log(err);
        }else {
            res.render("show", {campground: foundCampground});
        }
    });
});

app.get('/campgrounds/new' , (req, res) => {
    res.render("new.ejs");
});

app.listen(3000);



