import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/providers/film_provider.dart';

class FilmRepository {
  final FilmProvider provider;

  FilmRepository({@required this.provider});

  Future getFilm(String url) async {
    return await provider.getFilm(url);
  }
}
