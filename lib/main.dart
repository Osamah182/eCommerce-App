import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/routes.dart';
import 'package:e_commerce_cource/view/screens/onboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            // fontFamily: "PlayfairDisplay",
            headline1: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Nunito'),
            bodyText1:
                TextStyle(height: 2, color: AppColors.appGrey, fontSize: 16)),
        primaryColor: Colors.orange,
      ),
      home: const OnboardingPage(),
      routes: routes,
    );
  }
}
