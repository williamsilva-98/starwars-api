import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
