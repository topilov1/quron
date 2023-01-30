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
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  colorScheme: ColorScheme.light(background: AppColorsLight.background),
  appBarTheme: AppBarTheme(backgroundColor: AppColorsLight.background),
  iconTheme: IconThemeData(color: AppColorsLight.text),
  textTheme: _lightTextTheme(),
);
