import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quron/routes/app_routes.dart';
import 'package:quron/utils/consts.dart';
import 'package:quron/utils/theme/light.dart';
import 'package:quron/utils/theme/night.dart';

import '../routes/app_pages.dart';
import 'main_binding.dart';

class AppThemeProviderView extends StatelessWidget with AppRoutes {
  const AppThemeProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: nightTheme,
      initial: AppConstants.themeMode ?? AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        useInheritedMediaQuery: true,
        scaffoldMessengerKey: AppConstants.scaffoldMessangerKey,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GetMaterialApp(
            theme: light,
            darkTheme: dark,
            title: 'Marven',
            locale: Get.deviceLocale,
            getPages: AppRoutes.appPages,
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.native,
            initialBinding: MainBinding(),
            initialRoute: Routes.home,
          ),
        ),
      ),
    );
  }
}
