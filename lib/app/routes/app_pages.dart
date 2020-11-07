import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/home/home_binding.dart';
import 'package:swapi_app/app/pages/home/home_page.dart';

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
  ];
}