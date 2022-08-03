import 'package:e_commerce_cource/controller/auth/successresetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/signup_controller.dart';
import '../../../../core/constants/colors.dart';
import '../../../widgets/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());

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
                child: Text('Reset Password has been done successfuly',
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
