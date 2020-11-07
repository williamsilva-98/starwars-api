import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/character_model.dart';
import 'package:swapi_app/app/data/repositories/home_world_repository.dart';

class CharacterDetailsController extends GetxController {
  static CharacterDetailsController get to =>
      Get.find<CharacterDetailsController>();

  CharacterModel characterModel;

  CharacterDetailsController();

  @override
  void onInit() {
    characterModel = Get.arguments;
    super.onInit();
  }
}
