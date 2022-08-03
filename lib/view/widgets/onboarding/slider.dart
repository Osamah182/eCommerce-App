import 'package:e_commerce_cource/controller/onboarding_controller.dart';
import 'package:e_commerce_cource/core/constants/colors.dart';
import 'package:e_commerce_cource/data/data_source/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const SliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: Text(
                    onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  onBoardingList[i].image!,
                  // width: 250,
                  height: Get.width / 1.3,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 35),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                const SizedBox(height: 10),
              ],
            ));
  }
}
