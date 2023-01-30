import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../home/home_widgets.dart';

class SuraBigCard extends StatelessWidget {
  String address;
  String name;
  int suraNumber;
  SuraBigCard({
    super.key,
    required this.address,
    required this.name,
    required this.suraNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0).r,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 15.0,
            offset: const Offset(0.0, 0.0),
            color: Theme.of(context).shadowColor,
          ),
        ],
      ),
      child: Stack(
        children: [
          // image Positioned
          Positioned(
            left: 140.0,
            bottom: -55.0,
            child: Container(
              width: 300.0.w,
              height: 200.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0).r,
              ),
              child: Image.asset(AppImages.cardBackground2),
            ),
          ),

          Container(
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0).r,
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColorsLight.bigCard.withOpacity(0.7),
                  AppColorsLight.bigCard.withOpacity(0.9),
                ],
              ),
            ),
            padding: const EdgeInsets.all(30.0).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 30.0.sp,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10.0.w),
                    BigCardTextWidgets.smalltext(
                      text: "nozil : $address ",
                    ),
                  ],
                ),
                SizedBox(height: 15.0.h),
                BigCardTextWidgets.smalltext(
                  text: "Ko'chirip olindi",
                ),
                SizedBox(height: 15.0.h),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(height: 10.0.h),
                BigCardTextWidgets.smalltext(text: 'oyat No : $suraNumber'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
