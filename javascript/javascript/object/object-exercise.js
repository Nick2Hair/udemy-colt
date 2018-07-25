var movies = [
  {
    haveWatched: true,
    title: "In Bruges",
    stars: 5
  },
  {
    haveWatched: false,
    title: "Frozen",
    stars: 4.5
  },
  {
    haveWatched: true,
    title: "Mad Max Fury Road",
    stars: 5
  },
  {
    haveWatched: false,
    title: "Les Miserables",
    stars: 3.5
  }
];

for(var i=0; i<movies.length; i++) {
  
  if(movies[i].haveWatched === true) {
    console.log("You have watched \"" +movies[i].title+ "\" - " +movies[i].stars);
  }
  else {
    console.log("You have not watched \"" +movies[i].title+ "\" - "+movies[i].stars);
  }
}