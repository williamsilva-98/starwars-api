import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/models/film_model.dart';

class FilmProvider {
  final Dio httpClient;

  FilmProvider({@required this.httpClient});

  Future getFilm(String url) async {
    try {
      var response = await httpClient.get(url);

      if (response.statusCode == 200) {
        FilmModel filmModel = FilmModel.fromJson(response.data);

        return filmModel;
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
