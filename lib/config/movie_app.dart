import 'package:movie_app/global.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      onGenerateRoute: Routes().onGenerateRoute,
    );
  }
}
