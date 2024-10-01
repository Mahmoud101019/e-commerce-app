import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:e_commerce_app/view/widget/onBoarding/custombutton.dart';
import 'package:e_commerce_app/view/widget/onBoarding/customslideronboarding.dart';
import 'package:e_commerce_app/view/widget/onBoarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());
    return const SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Customslideronboarding(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                DotcontrollerOnBoarding(),
                Spacer(flex: 2),
                CustombuttonOnBoarding()
              ],
            ),
          )
        ],
      )),
    );
  }
}
