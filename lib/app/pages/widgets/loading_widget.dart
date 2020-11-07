import 'package:flutter/material.dart';
import 'package:get/get.dart';

openLoadingDialog() {
  Get.dialog(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Colors.transparent,
          child: Container(
            width: Get.width * .85,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Buscando informações...',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
