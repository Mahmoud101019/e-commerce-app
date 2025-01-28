import 'package:e_commerce_app/controller/auth/ForgetPassword%20Controller/resetpassword_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customresetpasswrod.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImpl controller =
        Get.put(ResetpasswordControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "30".tr,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: ListView(
            children: [
              const Customresetpasswrod(),
              Customtexttitleauth(
                texttitle: "31".tr,
              ),
              Customtextbodyauth(
                textbody: "32".tr,
              ),
              SizedBox(
                height: 15,
              ),
              Customtextformauth(
                controller: controller.newPassword,
                hinttext: "31".tr,
                icon: Icon(Icons.visibility_outlined),
                lable: "14".tr,
                prefixIcon: Icon(Icons.lock_outline),
              ),
              Customtextformauth(
                controller: controller.conNewPassword,
                hinttext: "33".tr,
                icon: Icon(Icons.visibility_outlined),
                lable: "14".tr,
                prefixIcon: Icon(Icons.lock_outline),
              ),
              SizedBox(
                height: 15,
              ),
              Custombuttonauth(
                text: "34".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
