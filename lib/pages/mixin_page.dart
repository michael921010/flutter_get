import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_get/services/controllers/mixin_controller.dart';

// ALWAYS remember to pass the `Type` you used to register your controller!
class MixinPage extends GetView<MixinController> {
  const MixinPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mixin"),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => Text(state!.name.toString()),

        // here you can put your custom loading indicator, but
        // by default would be Center(child:CircularProgressIndicator())
        // onLoading: CustomLoadingIndicator(),
        onLoading: const Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              spinnerMode: true,
            ),
          ),
        ),

        onEmpty: const Text('No data found'),

        // here also you can set your own error widget, but by
        // default will be an Center(child:Text(error))
        onError: (error) => Text(error.toString()),
      ),
    );
  }
}
