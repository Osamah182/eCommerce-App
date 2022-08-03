import 'package:e_commerce_cource/controller/auth/successsignup_controller.dart';
import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/view/widgets/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/signup_controller.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          // height: 150,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            "Success",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 150,
              color: AppColors.primaryColor,
            ),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 60),
                child: Text('Sing Up has been done successfuly',
                    style: TextStyle(color: Colors.green, fontSize: 25))),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                  text: 'Go To Login',
                  onPressed: () {
                    controller.goToPageLogin();
                  }),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
