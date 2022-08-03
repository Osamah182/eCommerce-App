import 'package:e_commerce_cource/controller/checkemail_controller.dart';
import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtextformauth.dart';
import 'package:e_commerce_cource/view/widgets/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
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
            "Check Email",
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
              const CustomTextTitleAuth(textTitle: "Success SignUp"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "Please Enter Your Email Address To Recive A verification code"),
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
