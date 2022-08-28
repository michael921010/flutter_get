// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get/pages/home/home_view.dart';
import 'package:flutter_get/services/bindings/home_bindings.dart';
import 'package:flutter_get/services/bindings/sample_bindings.dart';
import 'package:flutter_get/pages/profile_page.dart';
import 'package:flutter_get/services/translations.dart';
import 'package:flutter_get/pages/first.dart';
import 'package:flutter_get/pages/second.dart';
import 'package:flutter_get/pages/third.dart';

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
      defaultTransition: Transition.native,
      translations: MyTranslations(),
      locale: const Locale('pt', 'BR'),
      initialRoute: '/first',
      getPages: [
        GetPage(
          name: '/first',
          page: () => const First(),
        ),
        GetPage(
          name: '/second',
          page: () => const Second(),
          customTransition: SizeTransitions(),
          binding: SampleBind(),
        ),
        GetPage(
          name: '/third',
          transition: Transition.cupertino,
          page: () => const Third(),
        ),
        //
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
