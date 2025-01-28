import 'package:e_commerce_app/controller/auth/ForgetPassword%20Controller/verifycode_controller.dart';
import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class OtpCustom extends StatelessWidget {
  const OtpCustom({super.key});

  @override
  Widget build(BuildContext context) {
    VerifycodeControllerImpl controller = Get.put(VerifycodeControllerImpl());
    return OtpTextField(
      numberOfFields: 5,
      fieldWidth: 50,
      textStyle: TextStyle(fontSize: 28),
      borderColor: AppColor.primaryColor,
      focusedBorderColor: AppColor.primaryColor,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        controller.goToResetPasswrod();
      }, // end onSubmit
    );
  }
}
