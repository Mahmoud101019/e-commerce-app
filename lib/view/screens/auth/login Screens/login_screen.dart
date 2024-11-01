import 'package:e_commerce_app/controller/auth/login%20controllers/login_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customcreateaccountsection.dart';
import 'package:e_commerce_app/view/widget/auth/customforgetpasswordsection.dart';
import 'package:e_commerce_app/view/widget/auth/customlogo.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "11".tr,
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
              const Customlogo(),
              Customtexttitleauth(
                texttitle: "8".tr,
              ),
              Customtextbodyauth(
                textbody: "9".tr,
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
              Customforgetpasswordsection(
                onPressed: () {
                  controller.goToForgetPassword();
                },
              ),
              Custombuttonauth(
                text: "11".tr,
                onPressed: () {},
              ),
              Customcreateaccountsection(
                onPressed: () {
                  controller.goPageSignUp();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
