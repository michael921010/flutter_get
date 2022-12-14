import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/pages/about_page.dart';
import 'package:flutter_get/services/controllers/controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  var count = 0.obs;

  // set controller as dispatcher from Controller
  final controller = Get.put(Controller());

  void incrementCounter() {
    count++;
    controller.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                'controller count: ${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Obx(
              () => Text(
                "state count: $count",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              child: const Text('About Page'),
              onPressed: () {
                Get.to(AboutPage());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
