import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/models/home_world_model.dart';

class HomeWorldProvider {
  final Dio httpClient;

  HomeWorldProvider({@required this.httpClient});

  Future getHomeWorld(String url) async {
    try {
      var response = await httpClient.get(url);

      if (response.statusCode == 200) {
        HomeWorldModel homeWorldModel = HomeWorldModel.fromJson(response.data);

        return homeWorldModel;
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
