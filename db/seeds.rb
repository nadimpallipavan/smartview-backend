Content.destroy_all

Content.create!([
  {
    title: "Inception",
    description: "A mind-bending thriller",
    content_type: "movie",
    genre: "sci-fi",
    imdb_id: "tt1375666",
    thumbnail: "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg"
  },
  {
    title: "Interstellar",
    description: "Space exploration",
    content_type: "movie",
    genre: "sci-fi",
    imdb_id: "tt0816692",
    thumbnail: "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg"
  },
  {
    title: "The Dark Knight",
    description: "Batman faces the Joker",
    content_type: "movie",
    genre: "action",
    imdb_id: "tt0468569",
    thumbnail: "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg"
  },
  {
    title: "Breaking Bad",
    description: "Chemistry teacher turns criminal",
    content_type: "series",
    genre: "drama",
    imdb_id: "tt0903747",
    thumbnail: "https://image.tmdb.org/t/p/w500/ggFHVNu6YYI5L9pCfOacjizRGt.jpg"
  }
])