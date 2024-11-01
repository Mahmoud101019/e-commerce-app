import 'package:e_commerce_app/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotcontrollerOnBoarding extends StatelessWidget {
  const DotcontrollerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) {
                return AnimatedContainer(
                  margin: const EdgeInsets.only(right: 8),
                  duration: const Duration(milliseconds: 900),
                  width: controller.currentPage == index ? 25 : 5,
                  height: 4,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
