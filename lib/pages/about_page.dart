import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/services/controllers/controller.dart';

class AboutPage extends StatelessWidget {
  AboutPage({
    Key? key,
  }) : super(key: key);

  // get state from Controller
  final Controller ctrl = Get.find<Controller>();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Text(
          'controller count: ${ctrl.count}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
