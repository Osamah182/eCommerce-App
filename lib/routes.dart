import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/loging.dart';
import 'package:e_commerce_cource/view/screens/auth/resetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:e_commerce_cource/view/screens/auth/succesresetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/successSignup.dart';
import 'package:e_commerce_cource/view/screens/auth/verfiycode.dart';
import 'package:e_commerce_cource/view/screens/onboardingPage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetpassword: (context) => const ForgetPassword(),
  AppRoute.verfiycode: (context) => const VerfiyCode(),
  AppRoute.resetpassword: (context) => const ResetPassword(),
  AppRoute.successresetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successsignup: (context) => const SuccessSignUp(),

  // OnBoarding
  AppRoute.onBoardingPage: (context) => const OnboardingPage(),
};
