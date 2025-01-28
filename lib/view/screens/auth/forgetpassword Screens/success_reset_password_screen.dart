import 'package:e_commerce_app/controller/auth/ForgetPassword%20Controller/Reset%20Password%20Success%20Controller/reset_password_success_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordSuccessControllerImpl controllerImpl =
        Get.put(ResetPasswordSuccessControllerImpl());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
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
