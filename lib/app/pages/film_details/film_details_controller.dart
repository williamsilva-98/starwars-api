import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/models/film_model.dart';
import 'package:swapi_app/app/data/repositories/film_repository.dart';

class FilmDetailsController extends GetxController {
  static FilmDetailsController get to => Get.find<FilmDetailsController>();

  final FilmRepository filmRepository;

  FilmModel filmModel;
  String url;

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  FilmDetailsController({@required this.filmRepository});

  @override
  void onInit() {
    url = Get.arguments;
    getFilm();
    super.onInit();
  }

  Future getFilm() async {
    isLoading = true;

    final res = await filmRepository.getFilm(url);

    if (res != null) {
      filmModel = res;
    }

    isLoading = false;
  }
}
