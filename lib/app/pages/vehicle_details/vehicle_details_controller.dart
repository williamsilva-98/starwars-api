import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/vehicle_model.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';

class VehicleDetailsController extends GetxController {
  static VehicleDetailsController get to =>
      Get.find<VehicleDetailsController>();

  VehicleModel vehicleModel;
  String url;

  final DetailsRepository detailsRepository;

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  VehicleDetailsController({@required this.detailsRepository});

  @override
  void onInit() {
    url = Get.arguments;
    getData();
    super.onInit();
  }

  Future getData() async {
    isLoading = true;

    final res = await detailsRepository.getData(url);

    if (res != null) {
      vehicleModel = VehicleModel.fromJson(res);
    }

    isLoading = false;
  }
}
