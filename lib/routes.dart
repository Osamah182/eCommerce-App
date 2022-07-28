import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/view/screens/auth/loging.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:e_commerce_cource/view/screens/onboardingPage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.onBoardingPage: (context) => const OnboardingPage(),
};
