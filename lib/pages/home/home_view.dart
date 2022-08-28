import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller.dart';

class HomeView extends GetView<Controller> {
  HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  final controller = Get.put(Controller());

  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => Text("controller count: ${controller.count}"),
              ),
              ElevatedButton(
                child: const Text('Profile Page'),
                onPressed: () {
                  Get.toNamed("/profile");
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          child: const Icon(Icons.add),
        ),
      );
}
