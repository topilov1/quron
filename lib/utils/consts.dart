import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ScreenDevice on BuildContext {
  get initScreenSize {
    ScreenUtil.init(this, designSize: AppConstants.designSize);
  }

  get changeLightTheme {
    AdaptiveTheme.of(this).setLight();
  }

  get changeDarkTheme {
    AdaptiveTheme.of(this).setDark();
  }

  get defaultTheme {
    AdaptiveTheme.of(this).setSystem();
  }
}

class AppConstants {
  static AdaptiveThemeMode? themeMode = AdaptiveThemeMode.light;
  static const Size designSize = Size(428, 926);
  static final scaffoldMessangerKey = GlobalKey<ScaffoldMessengerState>();
}
