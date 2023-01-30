import 'package:get/get.dart';
import 'package:quron/services/controller/sura_controller.dart';

class SuraBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SuraController>(SuraController());
  }
}
