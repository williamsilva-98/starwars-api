import 'package:get/get.dart';
import 'character_details_controller.dart';

class CharacterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CharacterDetailsController>(CharacterDetailsController());
  }
}
