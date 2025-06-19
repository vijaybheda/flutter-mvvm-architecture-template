import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/screen/auth_screen.dart';
import 'package:flutter_mvvm_architecture_template/navigation/getx_navigation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static void setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? "";
    return token;
  }

  static Future<void> logout(String message) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? "";
    if (token.isEmpty) {
      return;
    }
    await prefs.clear();
    if (message.isNotEmpty) {
      Get.snackbar(
        'Error',
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    GetxNavigation().navigateToNextAndRemovePreviousAll(AuthScreen.routeName);
  }
}
