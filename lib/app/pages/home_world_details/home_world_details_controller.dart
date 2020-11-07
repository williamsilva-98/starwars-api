import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/repositories/home_world_repository.dart';

class HomeWorldDetailsController extends GetxController {
  static HomeWorldDetailsController get to =>
      Get.find<HomeWorldDetailsController>();

  String url;

  final HomeWorldRepository homeWorldRepository;

  HomeWorldDetailsController({@required this.homeWorldRepository});

  @override
  void onInit() {
    url = Get.arguments;
    getHomeWorld();
    super.onInit();
  }

  getHomeWorld() async {
    final res = await homeWorldRepository.getHomeWorld(url);
  }
}
