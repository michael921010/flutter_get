import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/pages/home/home_view.dart';
import 'package:flutter_get/pages/home/home_bindings.dart';
import 'package:flutter_get/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeView(
            title: 'Flutter Demo Home Page',
          ),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/profile',
          page: () => const ProfilePage(
            title: 'Profile',
          ),
        ),
      ],
    );
  }
}
