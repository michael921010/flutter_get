import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller_x.dart';

class Third extends GetView<ControllerX> {
  Third({
    Key? key,
  }) : super(key: key);

  final bool flag = false;
  final name = 'GetX'.obs;
  final count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementList();

          // test with "name" by GetX
          name.value = 'Hey';
          name('Hello');
          name();

          // test with "count" by GetX
          count + 1;
          count > 2;
        },
      ),
      appBar: AppBar(
        title: Text("Third ${Get.arguments}"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Obx(() => Text("The name is $name")),
            Obx(() => Text("The count is $count")),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    return Text("${controller.list[index]}");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
