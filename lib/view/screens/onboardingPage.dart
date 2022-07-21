import 'package:e_commerce_cource/controller/onboarding_controller.dart';
import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/data/data_source/static.dart';
import 'package:e_commerce_cource/view/widgets/onboarding/custombutton.dart';
import 'package:e_commerce_cource/view/widgets/onboarding/slider.dart';
import 'package:e_commerce_cource/view/widgets/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            const Expanded(flex: 2, child: SliderOnBoarding()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const DotController(),
                    const Spacer(flex: 1),
                    const CustomButtonOnboarding(),
                  ],
                ))
          ]),
        ));
  }
}
