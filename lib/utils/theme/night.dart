import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quron/utils/colors/app_colors.dart';

TextTheme? _darkTextTheme() => TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontFamily: 'Roboto-Regular',
        color: AppColorsNight.text,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 17.sp,
        fontFamily: 'Roboto-Regular',
        color: AppColorsNight.text,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: AppColorsNight.text,
      ),
    );

ThemeData nightTheme = ThemeData(
  shadowColor: AppColorsNight.shadow,
  colorScheme: ColorScheme.dark(background: AppColorsNight.background),
  appBarTheme: AppBarTheme(backgroundColor: AppColorsNight.background),
  iconTheme: IconThemeData(color: AppColorsNight.oyatInfoText),
  cardColor: AppColorsNight.infoCard,
  textTheme: _darkTextTheme(),
);
