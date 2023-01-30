import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quron/utils/consts.dart';

class HomeController extends GetxController {
  bool isLight = false;

  changeAppTheme(BuildContext context) {
    if (isLight) {
      changeDark(context);
    } else {
      changeLight(context);
    }
  }

  void changeDark(BuildContext context) {
    context.changeDarkTheme;
    isLight = false;
    update();
  }

  void changeLight(BuildContext context) {
    context.changeLightTheme;
    isLight = true;
    update();
  }
}
