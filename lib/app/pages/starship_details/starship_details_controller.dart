import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/starship_model.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';

class StarshipDetailsController extends GetxController {
  static StarshipDetailsController get to =>
      Get.find<StarshipDetailsController>();

  StarshipModel starshipModel;
  String url;

  final DetailsRepository detailsRepository;

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  StarshipDetailsController({@required this.detailsRepository});

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
      starshipModel = StarshipModel.fromJson(res);
    }

    isLoading = false;
  }
}
