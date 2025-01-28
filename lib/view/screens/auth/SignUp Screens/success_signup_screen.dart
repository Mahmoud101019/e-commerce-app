import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/Sign Up Controllers/Success Signup Controller/success_signup_controller.dart';

class SuccessSignupScreen extends StatelessWidget {
  const SuccessSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImpl controllerImpl =
        Get.put(SuccessSignupControllerImpl());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "37".tr,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 300,
                color: AppColor.primaryColor,
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Custombuttonauth(
                  text: "38".tr,
                  onPressed: () {
                    controllerImpl.gotoLoginPage();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
