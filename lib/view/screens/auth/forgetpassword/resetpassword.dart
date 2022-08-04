import 'package:e_commerce_cource/core/functions/validinput.dart';
import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../controller/auth/signup_controller.dart';
import '../../../widgets/auth/customtextformauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          // height: 150,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Text(
            "Reset Password",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
          child: ListView(
            children: [
              // const LogoAuth(),
              const SizedBox(height: 20),
              const CustomTextTitleAuth(textTitle: "Enter Your New Password"),
              const SizedBox(height: 40),
              const CustomTextBodyAuth(text: "Enter Your New Password"),
              const SizedBox(height: 40),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 8, 20, "password");
                  },
                  myController: controller.password,
                  hintText1: "Enter Your Password",
                  label1: "Password",
                  iconData: Icons.lock_outlined),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 8, 20, "password");
                  },
                  myController: controller.repassword,
                  hintText1: "Confirm Your Password",
                  label1: "Confirm",
                  iconData: Icons.lock_outlined),
              const SizedBox(height: 35),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: CustomButtonAuth(
                    text: 'enter',
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    }),
              )
            ],
          )),
    );
  }
}
