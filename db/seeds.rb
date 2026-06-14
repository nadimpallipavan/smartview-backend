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
  },

  {
    title: "Silicon Valley",
    description: "Comedy series about startup founders and programmers.",
    content_type: "series",
    genre: "comedy",
    imdb_id: "tt2575988",
    thumbnail: "https://www.justwatch.com/images/poster/174842352/s718/silicon-valley.jpg",
    trailer_url: "https://www.youtube.com/results?search_query=Silicon+Valley+official+trailer",
    watch_url: "https://www.justwatch.com/us/search?q=Silicon%20Valley",
    source: "JustWatch"
  },
  {
    title: "Night of the Living Dead",
    description: "Classic public-domain horror movie.",
    content_type: "movie",
    genre: "horror",
    imdb_id: "tt0063350",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Night_of_the_Living_Dead.jpg",
    trailer_url: "https://www.youtube.com/results?search_query=Night+of+the+Living+Dead+trailer",
    watch_url: "https://archive.org/details/night_of_the_living_dead",
    source: "Internet Archive"
  },
  {
    title: "The General",
    description: "Classic silent action-comedy film.",
    content_type: "movie",
    genre: "classic",
    imdb_id: "tt0017925",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/5/5c/The_General_%281926%29_poster.jpg",
    trailer_url: "https://www.youtube.com/results?search_query=The+General+1926+trailer",
    watch_url: "https://archive.org/details/TheGeneral1926",
    source: "Internet Archive"
  },
  {
    title: "Raja Harishchandra",
    description: "Early Indian silent film, considered one of India’s first full-length feature films.",
    content_type: "movie",
    genre: "bollywood-classic",
    imdb_id: "tt0003311",
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Raja_Harishchandra.jpg",
    trailer_url: "https://www.youtube.com/results?search_query=Raja+Harishchandra+movie",
    watch_url: "https://www.justwatch.com/us/search?q=Raja%20Harishchandra",
    source: "JustWatch"
  },
  {
    title: "Maya Bazaar",
    description: "Classic Telugu fantasy film.",
    content_type: "movie",
    genre: "tollywood-classic",
    imdb_id: "tt0249795",
    thumbnail: "https://upload.wikimedia.org/wikipedia/en/3/3c/Mayabazar.jpg",
    trailer_url: "https://www.youtube.com/results?search_query=Mayabazar+official+trailer",
    watch_url: "https://www.justwatch.com/us/search?q=Mayabazar",
    source: "JustWatch"
  }
])