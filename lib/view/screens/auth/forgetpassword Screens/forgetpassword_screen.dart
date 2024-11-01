import 'package:e_commerce_app/controller/auth/ForgetPassword%20Controller/forgetpassword_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customlogo.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetpasswordScreen extends StatelessWidget {
  const ForgetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller =
        Get.put(ForgetPasswordControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "25".tr,
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
              const Customlogo(),
              Customtexttitleauth(
                texttitle: "24".tr,
              ),
              Customtextbodyauth(
                textbody: "27".tr,
              ),
              Customtextformauth(
                controller: controller.email,
                hinttext: "10".tr,
                icon: Icon(Icons.person_2_outlined),
                lable: "12".tr,
              ),
              SizedBox(
                height: 40,
              ),
              Custombuttonauth(
                text: "26".tr,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
