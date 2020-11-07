import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/home_world_provider.dart';
import 'package:swapi_app/app/data/repositories/home_world_repository.dart';
import 'home_world_details_controller.dart';

class HomeWorldBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeWorldDetailsController>(
      HomeWorldDetailsController(
        homeWorldRepository: HomeWorldRepository(
          provider: HomeWorldProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
