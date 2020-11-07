import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/character_details/character_details_binding.dart';
import 'package:swapi_app/app/pages/character_details/character_details_page.dart';
import 'package:swapi_app/app/pages/home/home_binding.dart';
import 'package:swapi_app/app/pages/home/home_page.dart';
import 'package:swapi_app/app/pages/home_world_details/home_world_details_binding.dart';
import 'package:swapi_app/app/pages/home_world_details/home_world_details_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      title: 'Home',
      name: AppRoutes.HOME,
      page: () => HomePage(),
      curve: Curves.easeIn,
      transition: Transition.fadeIn,
      binding: HomeBinding(),
    ),
    GetPage(
      title: 'Detalhes do Personagem',
      name: AppRoutes.CHARACTER_DETAILS,
      page: () => CharacterDetailsPage(),
      curve: Curves.easeIn,
      transition: Transition.fadeIn,
      binding: CharacterBinding(),
    ),
    GetPage(
      title: 'Detalhes do planeta natal',
      name: AppRoutes.HOMEWORLD_DETAILS,
      page: () => HomeWorldDetailsPage(),
      curve: Curves.easeIn,
      transition: Transition.fadeIn,
      binding: HomeWorldBinding(),
    ),
  ];
}
