class Config {
  static String baseUrl = 'https://api.themoviedb.org/3/discover/movie';
  static String apiKey = "8b5d575fbdb689dd6874a773130696b4";
  static String language = "en-US";
  static String sortBy = "popularity.desc";
  static bool includeAdult = false;
  static bool includeVideo = false;
  static int page = 1;
  static String monetizationType = "flatrate";

  static String urlAPI =
      'https://api.themoviedb.org/3/discover/movie?api_key=8b5d575fbdb689dd6874a773130696b4&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate';
}
