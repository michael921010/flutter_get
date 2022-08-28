import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller_x.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}
