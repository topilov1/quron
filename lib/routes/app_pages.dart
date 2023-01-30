import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:quron/pages/home/home_view.dart';
import 'package:quron/pages/sura/sura_view.dart';
import 'package:quron/services/bindings/sura_bainding.dart';

import '../services/bindings/home_bainding.dart';
import 'app_routes.dart';

mixin AppRoutes on StatelessWidget {
  static final List<GetPage> appPages = [
    GetPage(
      name: Routes.homeView,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.suraViwe,
      page: () => const SuraViwe(),
      binding: SuraBinding(),
    ),
  ];
}
