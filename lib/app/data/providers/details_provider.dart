import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class DetailsProvider {
  final Dio httpClient;

  DetailsProvider({@required this.httpClient});

  Future getData(String url) async {
    try {
      var response = await httpClient.get(url);

      if (response.statusCode == 200) {
        return response.data;
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
