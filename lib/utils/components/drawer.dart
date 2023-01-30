import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../services/controller/home_controller.dart';

class HomeDrawer extends GetView<HomeController> {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(30).r,
            ),
            child: Row(
              children: [
                GetBuilder<HomeController>(
                  init: controller,
                  builder: (_) {
                    return themeButton(
                      icon: Icons.dark_mode_outlined,
                      color: Colors.white,
                      onTap: () {
                        controller.changeAppTheme(context);
                      },
                    );
                  },
                ),
                SizedBox(width: 20.0.w),
                GetBuilder<HomeController>(
                  init: controller,
                  builder: (_) {
                    return themeButton(
                      icon: Icons.light_mode_outlined,
                      color: Colors.black,
                      onTap: () {
                        controller.changeAppTheme(context);
                      },
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 30.h)
        ],
      ),
    );
  }
}

Expanded themeButton({
  required Color color,
  required IconData icon,
  required GestureTapCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(
          icon,
          color: Colors.grey[600],
        ),
      ),
    ),
  );
}
