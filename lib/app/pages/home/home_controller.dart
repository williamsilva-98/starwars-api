import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  String characterName;

  getCharacter() {
    print(characterName);
  }
}
