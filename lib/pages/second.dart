import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller_x.dart';

class Second extends GetView<ControllerX> {
  const Second({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                print("count1 rebuild");
                return Text('${controller.count1}');
              },
            ),
            Obx(
              () {
                print("count2 rebuild");
                return Text('${controller.count2}');
              },
            ),
            Obx(() {
              print("sum rebuild");
              return Text('${controller.sum}');
            }),
            Obx(
              () => Text('Name: ${controller.user.value.name}'),
            ),
            Obx(
              () => Text('Age: ${controller.user.value.age}'),
            ),
            ElevatedButton(
              child: const Text("Go to third page"),
              onPressed: () {
                Get.toNamed('/third', arguments: 'arguments of second');
              },
            ),
            ElevatedButton(
              child: const Text("Back page and open snackbar"),
              onPressed: () {
                Get.back();
                Get.snackbar(
                  'User 123',
                  'Successfully created',
                );
              },
            ),
            ElevatedButton(
              child: const Text("Increse count1"),
              onPressed: () {
                controller.increment();
              },
            ),
            ElevatedButton(
              child: const Text("Increse count2"),
              onPressed: () {
                controller.increment2();
              },
            ),
            ElevatedButton(
              child: const Text("Update name"),
              onPressed: () {
                controller.updateUser();
              },
            ),
            ElevatedButton(
              child: const Text("Dispose worker"),
              onPressed: () {
                controller.disposeWorker();
              },
            ),
          ],
        ),
      ),
    );
  }
}
