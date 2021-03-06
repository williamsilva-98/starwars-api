import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/film_model.dart';
import 'package:swapi_app/app/data/repositories/details_repository.dart';

class FilmDetailsController extends GetxController {
  static FilmDetailsController get to => Get.find<FilmDetailsController>();

  final DetailsRepository detailsRepository;

  FilmModel filmModel;
  String url;

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  FilmDetailsController({@required this.detailsRepository});

  @override
  void onInit() {
    url = Get.arguments;
    getFilm();
    super.onInit();
  }

  Future getFilm() async {
    isLoading = true;

    final res = await detailsRepository.getData(url);

    if (res != null) {
      filmModel = FilmModel.fromJson(res);
    }

    isLoading = false;
  }
}
