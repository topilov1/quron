import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quron/pages/sura/sura_widgets.dart';
import 'package:quron/utils/colors/app_colors.dart';
import 'package:quron/utils/components/appbar.dart';

import '../../utils/consts.dart';
import '../../utils/images/app_images.dart';

class SuraViwe extends StatelessWidget {
  const SuraViwe({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.designSize;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appbar(context, 'AL - Fotiha'),
      body: Column(
        children: [
          SuraBigCard(address: "Makka", name: "AL - Fotiha", suraNumber: 7),
          Expanded(
              child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        child: CupertinoButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/icons/save.png',
                            width: 20.0.w,
                            height: 20.0.h,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20.0,
                          right: 20.0,
                          left: 20.0,
                          top: 10.0,
                        ).r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
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
                            Flexible(
                              child: Text(
                                ' بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم',
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  color: AppColorsLight.arabText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "1. Rohman va Rohiym Аllohning nomi ila (boshlayman) ",
                          style: TextStyle(
                            fontSize: 15.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
