import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetpassword_controller.dart';
import '../../widgets/auth/customtextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
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
            "Forget Password",
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
              const CustomTextTitleAuth(textTitle: "Check Email"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "Sign up with your email and password or continue with social media"),
              const SizedBox(height: 35),
              CustomTextFormAuth(
                  myController: controller.email,
                  hintText1: "Enter Your Email",
                  label1: "Email",
                  iconData: Icons.email_outlined),
              CustomButtonAuth(
                  text: "Check",
                  onPressed: () {
                    controller.goToVerfiyCode();
                  }),
              SizedBox(height: 30),
            ],
          )),
    );
  }
}
