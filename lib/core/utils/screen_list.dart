import 'package:flutter_mvvm_architecture_template/modules/auth/screen/auth_screen.dart';
import 'package:flutter_mvvm_architecture_template/modules/error/error_404_screen.dart';
import 'package:get/get.dart';

class ScreenList {
 static GetPage<dynamic> unknownRoute = GetPage(
    name: Error404Screen.routeName,
    page: () => Error404Screen(),
  );
 static List<GetPage<dynamic>> getPages = [
    GetPage(name: AuthScreen.routeName, page: () => const AuthScreen()),
  ];
}
