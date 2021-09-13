import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsCardController extends GetxController {
  void onTap({
    required BuildContext context,
    required String message,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
