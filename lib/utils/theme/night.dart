import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quron/utils/colors/app_colors.dart';

TextTheme? _darkTextTheme() => TextTheme(
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontFamily: 'Roboto-Regular',
        color: AppColorsLight.oyatInfoText,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );

ThemeData nightTheme = ThemeData(
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
  primaryColor: Colors.black,
  appBarTheme: AppBarTheme(backgroundColor: AppColorsNight.background),
  colorScheme: ColorScheme.dark(background: AppColorsNight.background),
  iconTheme: IconThemeData(color: AppColorsNight.oyatInfoText),
  textTheme: _darkTextTheme(),
);
