import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtexttitleauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/logoauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/textsignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../widgets/auth/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
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
            "Sign Up",
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
              const CustomTextTitleAuth(textTitle: "Welcome"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "Sign up with your email and password or continue with social media"),
              const SizedBox(height: 35),
              CustomTextFormAuth(
                  myController: controller.username,
                  hintText1: "Enter your Username",
                  label1: "Username",
                  iconData: Icons.person_outline),
              // const SizedBox(height: 25),
              CustomTextFormAuth(
                  myController: controller.email,
                  hintText1: "Enter Your Email",
                  label1: "Email",
                  iconData: Icons.email_outlined),
              CustomTextFormAuth(
                  myController: controller.phoneNumber,
                  hintText1: "Enter Your Phone Number",
                  label1: "Phone Number",
                  iconData: Icons.phone_android_outlined),
              CustomTextFormAuth(
                  myController: controller.password,
                  hintText1: "Enter Your Passord",
                  label1: "Password",
                  iconData: Icons.lock_outlined),
              CustomButtonAuth(text: "Sign in", onPressed: () {}),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 7),
                  CustomTextSignUpOrSignIn(
                    text1: "Already have accout ?",
                    text2: "Sign In",
                    onTap: () {
                      controller.signIn();
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
