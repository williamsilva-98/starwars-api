import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/data/providers/film_provider.dart';
import 'package:swapi_app/app/data/repositories/film_repository.dart';
import 'package:swapi_app/app/pages/film_details/film_details_controller.dart';

class FilmBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<FilmDetailsController>(
      FilmDetailsController(
        filmRepository: FilmRepository(
          provider: FilmProvider(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
