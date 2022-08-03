import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  late String verfiycode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.successsignup);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
