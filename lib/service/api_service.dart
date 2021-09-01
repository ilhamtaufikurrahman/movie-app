import 'package:movie_app/global.dart';

class ApiService {
  static String url =
      'https://api.themoviedb.org/3/movie/popular?api_key=d188366aed043bc9ab422f5278cb3d71&language=en-US&page=1';

  static Future<List<Movie>> getMovie() async {
    Response res = await get(Uri.parse(url));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body)['results'];
      List<Movie> movies = body.map((item) {
        return Movie.addListMovie(item);
      }).toList();

      return movies;
    } else {
      throw 'gagal mengambil data';
    }
  }
}
