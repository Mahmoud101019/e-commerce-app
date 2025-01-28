import 'package:e_commerce_app/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customslideronboarding extends GetView<OnboardingControllerImpl> {
  const Customslideronboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              onBoardingList[index].title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Image.asset(onBoardingList[index].image!),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[index].body!,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }
}
