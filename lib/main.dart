import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/config/env.dart';
import 'package:flutter_mvvm_architecture_template/core/services/local_storage_service.dart';
import 'package:flutter_mvvm_architecture_template/core/theme/theme.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/screen_list.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/screen/auth_screen.dart';
import 'package:get/get.dart';

import 'modules/auth/provider/auth_provider.dart';
import 'modules/auth/repository/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService.init();
  AppConfig.setEnvironment(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVVM Architecture Template',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: const Locale('en', 'US'),
      enableLog: true,
      initialBinding: BindingsBuilder(() {
        Get.put(AuthProvider(AuthRepository()));
      }),
      key: Get.key,
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
      theme: AppTheme.light.theme,
      darkTheme: AppTheme.dark.theme,
      themeMode: ThemeMode.light,
      home: AuthScreen(),
      unknownRoute: ScreenList.unknownRoute,
      getPages: ScreenList.getPages,
      initialRoute: AuthScreen.routeName,
    );
  }
}
