import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';
class ToastMessage {
  void success(String title, message, BuildContext context) {
    try {
      Size size = MediaQuery.of(context).size;
      double width = size.width;
      toastification.show(
        alignment: width > 450 ? Alignment.topRight : Alignment.bottomCenter,
        context: context,
        title: width > 450 ? Text(title) : Text(title),
        type: ToastificationType.success,
        style: width > 450 ?ToastificationStyle.flatColored: ToastificationStyle.flatColored,
        autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: false,
        description: Text(message),
      );
    } catch (e) {
      print(e);
    }
  }

  void error(String title, message, BuildContext context) {
    try {
      Size size = MediaQuery.of(context).size;
      double width = size.width;
      toastification.show(
        alignment: width > 450 ? Alignment.topRight : Alignment.bottomCenter,
        context: context,
        title: width > 450 ? Text(title) : Text(title),
        type: ToastificationType.error,
        style: width > 450 ?ToastificationStyle.flatColored: ToastificationStyle.flatColored,
        autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: false,
        description: Text(message),
      );
    } catch (e) {
      print(e);
    }
  }

  void info(String title, message, BuildContext context) {
    try {
      Size size = MediaQuery.of(context).size;
      double width = size.width;
      toastification.show(
        alignment: width > 450 ? Alignment.topRight : Alignment.bottomCenter,
        context: context,
        title: width > 450 ? Text(title) : Text(title),
        type: ToastificationType.info,
        style: width > 450 ?ToastificationStyle.flatColored: ToastificationStyle.flatColored,
        autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: false,
        description: Text(message),
      );
    } catch (e) {
      print(e);
    }
  }

  void warning(String title, message, BuildContext context) {
    try {
      Size size = MediaQuery.of(context).size;
      double width = size.width;
      toastification.show(
        alignment: width > 450 ? Alignment.topRight : Alignment.bottomCenter,
        context: context,
        title: width > 450 ? Text(title) : Text(title),
        type: ToastificationType.warning,
        style: width > 450 ?ToastificationStyle.flatColored: ToastificationStyle.flatColored,
        autoCloseDuration: const Duration(seconds: 3),
        showProgressBar: false,
        description: Text(message),
      );
    } catch (e) {
      print(e);
    }
  }
}