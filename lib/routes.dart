import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/successSignup.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/verifycodesignup.dart';

import 'package:e_commerce_cource/view/screens/auth/loging.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/succesresetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/verfiycode.dart';
import 'package:e_commerce_cource/view/screens/onboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetpassword: (context) => const ForgetPassword(),
  AppRoute.verfiycode: (context) => const VerfiyCode(),
  AppRoute.verfiycodesignup: (context) => const VerfiyCodeSignUp(),
  AppRoute.resetpassword: (context) => const ResetPassword(),
  AppRoute.successresetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successsignup: (context) => const SuccessSignUp(),

  // OnBoarding
  AppRoute.onBoardingPage: (context) => const OnboardingPage(),
  AppRoute.successsignup: (context) => const SuccessSignUp()
};
