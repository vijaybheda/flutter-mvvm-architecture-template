import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/config/env.dart';
import 'package:flutter_mvvm_architecture_template/core/theme/theme.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/provider_list.dart';
import 'package:flutter_mvvm_architecture_template/core/utils/screen_list.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/screen/auth_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.setEnvironment(Environment.dev);
  runApp(MultiProvider(providers: ProviderList.providers, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      config: const ToastificationConfig(
        alignment: Alignment.bottomCenter,
        animationDuration: Duration(milliseconds: 300),
        maxToastLimit: 1,
      ),
      child: GetMaterialApp(
        title: 'Flutter MVVM Architecture Template',
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        theme: LightTheme,
        darkTheme: DarkTheme,
        themeMode: ThemeMode.light,
        home: AuthScreen(),
        unknownRoute: ScreenList.unknownRoute,
        getPages: ScreenList.getPages,
      ),
    );
  }
}
