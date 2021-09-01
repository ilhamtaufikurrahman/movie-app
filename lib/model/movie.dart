class Movie {
  bool? adult;
  String? backdropPath;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  String? releaseDate;
  num? voteAverage;
  num? voteCount;

  Movie(
      {this.adult,
      this.backdropPath,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.voteAverage,
      this.voteCount});

  factory Movie.addListMovie(Map<String, dynamic> object) {
    return Movie(
        adult: object['adult'],
        backdropPath: object['backdrop_path'],
        id: object['id'],
        originalLanguage: object['original_language'],
        originalTitle: object['original_title'],
        overview: object['overview'],
        popularity: object['popularity'],
        posterPath: object['poster_path'],
        releaseDate: object['release_date'],
        voteAverage: object['vote_average'],
        voteCount: object['vote_count']);
  }
}
