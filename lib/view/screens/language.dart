import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/core/localization/changelocal.dart';
import 'package:e_commerce_cource/view/widgets/language/custombuttonlanguage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              const SizedBox(height: 20),
              CustomButtomLang(
                textbutton: "Arabic",
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed(AppRoute.onBoardingPage);
                },
              ),
              CustomButtomLang(
                  textbutton: "English",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onBoardingPage);
                  }),
            ],
          )),
    );
  }
}
