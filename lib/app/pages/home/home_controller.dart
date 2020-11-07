import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/repositories/character_repository.dart';
import 'package:swapi_app/app/pages/widgets/loading_widget.dart';
import 'package:swapi_app/app/pages/widgets/not_found_widget.dart';
import 'package:swapi_app/app/routes/app_routes.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  final CharacterRepository characterRepository;

  String characterName;

  HomeController({@required this.characterRepository});

  Future getCharacter() async {
    openLoadingDialog();

    final res = await characterRepository.getCharacter(characterName);

    Get.back();

    if (res != null) {
      Get.toNamed(AppRoutes.CHARACTER_DETAILS, arguments: res);
    } else {
      openNotFoundDialog();
    }
  }
}
