import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';

// ignore: must_be_immutable
class HomeBigCard extends StatelessWidget {
  String sura;
  String verse;
  HomeBigCard({super.key, required this.sura, required this.verse});

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
            height: 180.h,
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
            padding: const EdgeInsets.all(20.0).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.mosque_outlined,
                      color: Colors.white,
                      size: 20.0.sp,
                    ),
                    SizedBox(width: 10.0.w),
                    BigCardTextWidgets.smalltext(text: "Oxirgi o'qilgani : "),
                  ],
                ),
                SizedBox(height: 45.0.h),
                Text(
                  sura,
                  style: TextStyle(
                    fontSize: 25.0.sp,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0.h),
                BigCardTextWidgets.smalltext(text: verse),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BigCardTextWidgets {
  static Widget smalltext({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.0.sp,
        fontFamily: 'Roboto-Regular',
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  int index;
  String address;
  String ayah;
  String name;
  GestureTapCallback onTap;
  InfoCard({
    super.key,
    required this.address,
    required this.ayah,
    required this.index,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.0.h,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ).r,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15.0).r,
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              offset: const Offset(0.0, 0.0),
              color: Theme.of(context).shadowColor,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    invertColors: true,
                    image: AssetImage(AppImages.index2),
                  ),
                ),
                child: Center(
                  child: Text(
                    "${index + 1}",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.bodyMedium),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: address,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColorsLight.oyatInfoText,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextSpan(text: "   "),
                        TextSpan(
                          text: ayah,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColorsLight.oyatInfoText,
                            fontFamily: 'Roboto-Regular',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
