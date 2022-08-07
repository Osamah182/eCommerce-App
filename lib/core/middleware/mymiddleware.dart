import 'package:e_commerce_cource/core/constants/routes.dart';
import 'package:e_commerce_cource/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onbarding") != null) {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
