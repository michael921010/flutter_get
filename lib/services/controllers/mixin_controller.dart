import 'package:get/get.dart';
import './controller.dart';
import './controller_x.dart';

class MixinController extends Controller with StateMixin<User> {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 3), () {
      // update with new data
      change(
        User(name: "Michael Li", age: 66),
        status: RxStatus.success(),
      );

      // set error display
      // change(
      //   null,
      //   status: RxStatus.error("This is error message."),
      // );

      // set empty display
      // change(
      //   null,
      //   status: RxStatus.empty(),
      //   // status: RxStatus.success(),
      // );
    });
  }
}
