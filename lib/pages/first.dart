import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller.dart';

class First extends StatelessWidget {
// class First extends GetView<Controller> {
  const First({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Get.snackbar("Hi", "I'm modern snackbar");
          },
        ),
        title: Text("title".trArgs()),
        // title: Text("title".trArgs(['John'])),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
                init: Controller(),
                // You can initialize your controller here the first time. Don't use init in your other GetBuilders of same controller
                builder: (_) => Text(
                      'clicks: ${_.count}',
                    )),
            ElevatedButton(
              child: const Text('Second Page'),
              onPressed: () {
                Get.toNamed('/second');
              },
            ),
            ElevatedButton(
              child: const Text('Change locale to English'),
              onPressed: () {
                Get.updateLocale(const Locale('en', 'UK'));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Get.find<Controller>().increment();
            // controller.increment();
          }),
    );
  }
}
