import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/customlogoverify.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:e_commerce_app/view/widget/auth/otp_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifycodeScreen extends StatelessWidget {
  const VerifycodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "28".tr,
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
              const Customlogoverify(),
              Customtexttitleauth(
                texttitle: "28".tr,
              ),
              Customtextbodyauth(
                textbody: "29".tr,
              ),
              SizedBox(
                height: 15,
              ),
              OtpCustom(),
            ],
          ),
        ),
      ),
    );
  }
}
