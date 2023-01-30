import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:quron/pages/home.dart';

import '../pages/services/bindings/home_baindings.dart';
import 'app_routes.dart';

mixin AppRoutes on StatelessWidget {
  static final List<GetPage> appPages = [
    GetPage(
      name: Routes.home,
      page: () => const Home(),
      binding: HomeBinding(),
    ),
  ];
}
