import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkEmail();

  goVerifyCode();
}

class ForgetPasswordControllerImpl extends ForgetpasswordController {
  late TextEditingController email;

  @override
  goVerifyCode() {
    Get.toNamed(AppRoutes.verifyCode);
  }

  @override
  checkEmail() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
