import 'package:e_commerce_cource/controller/onboarding_controller.dart';
import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/data/data_source/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotController extends StatelessWidget {
  const DotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        margin: const EdgeInsets.only(right: 5),
                        width: controller.currentPage == index ? 20 : 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: controller.currentPage == index
                              ? AppColors.primaryColor
                              : AppColors.appGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ))
            ]));
  }
}
