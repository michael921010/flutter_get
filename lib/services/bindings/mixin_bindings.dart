import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/mixin_controller.dart';

class MixinBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MixinController>(() => MixinController());
  }
}
