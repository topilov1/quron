import 'package:get/get.dart';
import 'package:quron/services/controller/home_controller.dart';
import 'package:quron/services/controller/sura_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SuraController>(() => SuraController());
  }
}
