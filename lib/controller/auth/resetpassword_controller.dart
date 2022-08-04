import 'dart:developer';

import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  checkEmail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      if (formstate == password && formstate == repassword) {
        // I need to fix here to make password and repassword should be compatiable
        if (password == repassword) {
          goToSuccessResetPassword();
        }
      } else {
        print('not valid');
      }
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successresetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
