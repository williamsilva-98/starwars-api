import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/character_provider.dart';
import 'package:swapi_app/app/data/repositories/character_repository.dart';
import 'package:swapi_app/app/pages/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(
        characterRepository: CharacterRepository(
          provider: CharacterProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
