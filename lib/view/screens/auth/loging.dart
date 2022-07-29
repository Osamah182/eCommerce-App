import 'package:e_commerce_cource/controller/auth/loging_controller.dart';
import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtexttitleauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/logoauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/textsignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:path/path.dart';

import '../../widgets/auth/customtextformauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
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
            "Log in",
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
              const LogoAuth(),
              const SizedBox(height: 20),
              const CustomTextTitleAuth(textTitle: "Welcome Back"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "Sign in with your email and password or continue with social media"),
              const SizedBox(height: 35),
              CustomTextFormAuth(
                myController: controller.email,
                hintText1: "Enter Your Email",
                label1: "Email",
                iconData: Icons.email_outlined,
              ),
              // const SizedBox(height: 25),
              CustomTextFormAuth(
                  myController: controller.password,
                  hintText1: "Enter Your Password",
                  label1: "Password",
                  iconData: Icons.lock_outlined),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: const Text(
                  "Forget password",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              CustomButtonAuth(text: "Sign in", onPressed: () {}),
              const SizedBox(height: 30),
              CustomTextSignUpOrSignIn(
                text1: "Don't have an accout ?",
                text2: "SignUp",
                onTap: () {
                  controller.goToSignUp();
                },
              )
            ],
          )),
    );
  }
}
