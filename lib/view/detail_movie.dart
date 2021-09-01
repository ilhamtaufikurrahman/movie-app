import 'package:movie_app/global.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({Key? key, this.movie}) : super(key: key);

  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(movie!.originalTitle.toString()),
    ));
  }
}
