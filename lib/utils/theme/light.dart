import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quron/utils/colors/app_colors.dart';

TextTheme? _lightTextTheme() => TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontFamily: 'Roboto-Regular',
        color: AppColorsLight.text,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 17.sp,
        fontFamily: 'Roboto-Regular',
        color: AppColorsLight.text,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: AppColorsLight.text,
      ),
    );

ThemeData lightTheme = ThemeData(
  shadowColor: AppColorsLight.shadow,
  colorScheme: ColorScheme.light(background: AppColorsLight.background),
  appBarTheme: AppBarTheme(backgroundColor: AppColorsLight.background),
  iconTheme: IconThemeData(color: AppColorsLight.text),
  cardColor: AppColorsLight.infoCard,
  textTheme: _lightTextTheme(),
);
