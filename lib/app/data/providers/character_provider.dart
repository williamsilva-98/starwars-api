import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/models/character_model.dart';
import 'package:swapi_app/app/helper/api/base_url.dart';

class CharacterProvider {
  final Dio httpClient;

  CharacterProvider({@required this.httpClient});

  Future getCharacter(String name) async {
    try {
      var response = await httpClient.get(BASE_URL + '/people/?search=$name');

      if (response.statusCode == 200) {
        CharacterModel characterModel =
            CharacterModel.fromJson(response.data['results'][0]);

        return characterModel;
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
