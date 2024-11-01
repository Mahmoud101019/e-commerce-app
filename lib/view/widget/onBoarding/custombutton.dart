import 'package:e_commerce_app/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustombuttonOnBoarding extends GetView<OnboardingControllerImpl> {
  const CustombuttonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text("4".tr),
      ),
    );
  }
}
