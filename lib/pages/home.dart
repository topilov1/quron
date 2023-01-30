import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quron/utils/components/appbar.dart';
import 'package:quron/utils/consts.dart';
import 'package:quron/utils/images/app_images.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.designSize;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appbar(context, "Quron Mazid"),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 100.w,
                  bottom: -55.h,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15).r,
                    ),
                    child: Image.asset(
                      AppImages.cardBackground2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: 170.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15).r,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.green.withOpacity(0.7),
                        Colors.green.withOpacity(0.9),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('salom'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
