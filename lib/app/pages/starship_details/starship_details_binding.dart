import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/details_provider.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';
import 'package:swapi_app/app/pages/starship_details/starship_details_controller.dart';

class StarshipBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<StarshipDetailsController>(
      StarshipDetailsController(
        detailsRepository: DetailsRepository(
          provider: DetailsProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
