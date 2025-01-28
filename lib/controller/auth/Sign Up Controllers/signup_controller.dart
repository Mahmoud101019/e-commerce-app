import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();

  goPageLogin();
}

class SignUpControllerImpl extends SignupController {
  late TextEditingController username;
  late TextEditingController phonenumber;
  late TextEditingController email;
  late TextEditingController password;
  @override
  signup() {
    Get.offNamed(AppRoutes.checkEmailScreen);
  }

  @override
  goPageLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phonenumber = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phonenumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
