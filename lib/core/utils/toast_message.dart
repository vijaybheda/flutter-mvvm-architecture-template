import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToastMessage {
  void success(String title, String message, [BuildContext? context]) {
    try {
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(10),
        borderRadius: 8,
        icon: const Icon(Icons.check_circle, color: Colors.white),
      );
    } catch (e) {
      print(e);
    }
  }

  void error(String title, String message, [BuildContext? context]) {
    try {
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(10),
        borderRadius: 8,
        icon: const Icon(Icons.error, color: Colors.white),
      );
    } catch (e) {
      print(e);
    }
  }

  void info(String title, String message, [BuildContext? context]) {
    try {
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(10),
        borderRadius: 8,
        icon: const Icon(Icons.info, color: Colors.white),
      );
    } catch (e) {
      print(e);
    }
  }

  void warning(String title, String message, [BuildContext? context]) {
    try {
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(10),
        borderRadius: 8,
        icon: const Icon(Icons.warning, color: Colors.white),
      );
    } catch (e) {
      print(e);
    }
  }
}
