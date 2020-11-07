import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/repositories/character_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  final CharacterRepository characterRepository;

  String characterName;

  HomeController({@required this.characterRepository});

  Future getCharacter() async {
    final res = await characterRepository.getCharacter(characterName);
  }
}
