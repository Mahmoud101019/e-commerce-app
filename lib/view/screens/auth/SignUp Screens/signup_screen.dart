import 'package:e_commerce_app/controller/auth/Sign%20Up%20Controllers/signup_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customloginaccountsection.dart';
import 'package:e_commerce_app/view/widget/auth/customlogo.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImpl controller = Get.put(SignUpControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "17".tr,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              Customtexttitleauth(
                texttitle: "18".tr,
              ),
              const Customlogo(),
              Customtextformauth(
                controller: controller.username,
                hinttext: "19".tr,
                icon: Icon(Icons.person_2_outlined),
                lable: "20".tr,
              ),
              Customtextformauth(
                controller: controller.phonenumber,
                hinttext: "21".tr,
                icon: Icon(Icons.phone_android_outlined),
                lable: "22".tr,
              ),
              Customtextformauth(
                controller: controller.email,
                hinttext: "10".tr,
                icon: Icon(Icons.email_outlined),
                lable: "12".tr,
              ),
              Customtextformauth(
                controller: controller.password,
                hinttext: "13".tr,
                icon: Icon(Icons.visibility_outlined),
                lable: "14".tr,
                prefixIcon: Icon(Icons.lock_outline),
              ),
              Custombuttonauth(
                text: "17".tr,
                onPressed: () {
                  controller.signup();
                },
              ),
              CustomLogInAccountSection(
                onPressed: () {
                  controller.goPageLogin();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
