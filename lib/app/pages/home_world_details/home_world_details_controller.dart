import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/home_world_model.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';

class HomeWorldDetailsController extends GetxController {
  static HomeWorldDetailsController get to =>
      Get.find<HomeWorldDetailsController>();

  String url;
  HomeWorldModel homeWorldModel;

  final DetailsRepository detailsRepository;

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  HomeWorldDetailsController({@required this.detailsRepository});

  @override
  void onInit() {
    url = Get.arguments;
    getHomeWorld();
    super.onInit();
  }

  getHomeWorld() async {
    isLoading = true;

    final res = await detailsRepository.getData(url);

    if (res != null) {
      homeWorldModel = HomeWorldModel.fromJson(res);
    }

    isLoading = false;
  }
}
