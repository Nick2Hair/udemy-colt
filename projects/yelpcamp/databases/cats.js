const mongoose = require('mongoose');

mongoose.connect("mongodb://localhost/cat_app");

const catSchema = new mongoose.Schema({
    name: String,
    age: Number,
    temperament: String
});

const Cat = mongoose.model("Cat" , catSchema);

//adding a new cat to the DB

// const george = new Cat({
//     name: "Mrs. Norris",
//     age: 7,
//     temperament: "Evil"
// });

// george.save((err, cat) => {
//     if(err) {
//         console.log("Something went wrong!");
//     }else {
//         console.log("We saved a cat to the db!");
//         console.log(cat);
//     }
// });

Cat.create({
    name: "Snow White",
    age: 15,
    temperament: "Bland"
}, (err, cat) => {
    if(err) {
        console.log(err);
    } else {
        console.log(cat);
    }
});

//Retreive all cats from the DB and console.log each one

Cat.find({} , (err, cats) => {
    if(err) {
        console.log("There is an error!");
        console.log(err);
    } else {
        console.log("cats" , cats);
    }
});