import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app/data/constant.dart';

import 'views/homePage/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeftWithFade,
        scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
        theme: ThemeData(
            primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.black),
        home: const HomePageView());
  }
}
