import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/character_model.dart';

class CharacterDetailsController extends GetxController {
  static CharacterDetailsController get to =>
      Get.find<CharacterDetailsController>();

  CharacterModel characterModel;

  @override
  void onInit() {
    characterModel = Get.arguments;
    super.onInit();
  }
}
