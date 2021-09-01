import 'package:movie_app/global.dart';

const String home = '/home';
const String detail = '/detail';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        return MaterialPageRoute(builder: (context) => HomePage());
      case detail:
        Movie? movie = setting.arguments as Movie;
        return MaterialPageRoute(
            builder: (context) => DetailMovie(
                  movie: movie,
                ));
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(),
          ),
        );
    }
  }
}
