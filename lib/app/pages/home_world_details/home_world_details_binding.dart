import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/details_provider.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';
import 'home_world_details_controller.dart';

class HomeWorldBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeWorldDetailsController>(
      HomeWorldDetailsController(
        detailsRepository: DetailsRepository(
          provider: DetailsProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
