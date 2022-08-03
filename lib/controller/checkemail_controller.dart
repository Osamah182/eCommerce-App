import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiycodesignup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
