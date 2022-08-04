import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/view/screens/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  loging();
  goToSignUp();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;

  @override
  loging() {
    Get.offNamed(AppRoute.login);
  }

  @override
  goToSignUp() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      if (formstate == username &&
          formstate == email &&
          formstate == phoneNumber &&
          formstate == password) {
        print('all field are valid');
      }
      Get.offAllNamed(AppRoute.verfiycodesignup);
      Get.delete<SignupControllerImp>();
    } else {
      print("not valid");
    }
    ;
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
