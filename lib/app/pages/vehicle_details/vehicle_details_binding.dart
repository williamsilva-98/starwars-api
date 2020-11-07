import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/details_provider.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';
import 'package:swapi_app/app/pages/vehicle_details/vehicle_details_controller.dart';

class VehicleBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<VehicleDetailsController>(
      VehicleDetailsController(
        detailsRepository: DetailsRepository(
          provider: DetailsProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
