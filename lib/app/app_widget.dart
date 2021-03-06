import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/home/home_binding.dart';
import 'package:swapi_app/app/pages/home/home_page.dart';
import 'package:swapi_app/app/routes/app_pages.dart';
import 'package:swapi_app/app/routes/app_routes.dart';
import 'package:swapi_app/app/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: AppRoutes.HOME,
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
      home: HomePage(),
    );
  }
}
