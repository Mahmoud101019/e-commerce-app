import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();

  goSuccessSignup();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goSuccessSignup() {
    Get.offAllNamed(AppRoutes.successSignupScreen);
  }

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
