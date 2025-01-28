import 'package:e_commerce_app/controller/auth/Sign%20Up%20Controllers/Check%20Email%20Controller/check_email_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customforgetlogo.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImpl controller = Get.put(CheckEmailControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "35".tr,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: ListView(
            children: [
              const Customforgetlogo(),
              SizedBox(
                height: 20,
              ),
              Customtexttitleauth(
                texttitle: "36".tr,
              ),
              Customtextformauth(
                controller: controller.email,
                hinttext: "10".tr,
                icon: Icon(Icons.person_2_outlined),
                lable: "12".tr,
              ),
              SizedBox(
                height: 20,
              ),
              Custombuttonauth(
                text: "26".tr,
                onPressed: () {
                  controller.goSuccessSignup();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
