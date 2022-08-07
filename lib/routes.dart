import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/core/middleware/mymiddleware.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/successSignup.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/verifycodesignup.dart';

import 'package:e_commerce_cource/view/screens/auth/loging.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/succesresetpassword.dart';
import 'package:e_commerce_cource/view/screens/auth/forgetpassword/verfiycode.dart';
import 'package:e_commerce_cource/view/screens/language.dart';
import 'package:e_commerce_cource/view/screens/onboardingPage.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  //Auth pages
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiycode, page: () => const VerfiyCode()),
  GetPage(
      name: AppRoute.verfiycodesignup, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.resetpassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successresetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successsignup, page: () => const SuccessSignUp()),

  // onboarding pages
  GetPage(name: AppRoute.onBoardingPage, page: () => const OnboardingPage()),
  GetPage(name: AppRoute.successsignup, page: () => const SuccessSignUp()),
];
