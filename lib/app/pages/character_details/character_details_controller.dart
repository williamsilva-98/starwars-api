import 'package:get/get.dart';

class CharacterDetailsController extends GetxController {
  static CharacterDetailsController get to =>
      Get.find<CharacterDetailsController>();

  CharacterDetailsController();

  @override
  void onInit() {
    var arg = Get.arguments;
    print(arg);
    super.onInit();
  }
}
