import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signIn();
  goToSignUp();
}

class SignupControllerImp extends SignupController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;

  @override
  signIn() {
    Get.toNamed(AppRoute.login);
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();

    super.dispose();
  }
}
