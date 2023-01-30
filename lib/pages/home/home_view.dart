import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quron/utils/components/appbar.dart';
import 'package:quron/utils/components/drawer.dart';
import 'package:quron/utils/consts.dart';

import '../../routes/app_routes.dart';
import '../../services/controller/home_controller.dart';
import 'home_widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.designSize;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appbar(context, "Qur'on"),
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          HomeBigCard(sura: "AL - Fotiha", verse: 'oyat No: 3'),
          Expanded(
            child: ListView.builder(
              itemCount: 114,
              itemBuilder: (context, index) {
                return InfoCard(
                  ayah: "7 - oyat",
                  index: index + 1,
                  address: "Makka",
                  name: "AL - Fotiha",
                  onTap: () {
                    Get.toNamed(Routes.suraViwe, arguments: [index]);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
