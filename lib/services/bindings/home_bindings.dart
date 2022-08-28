import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
  }
}
