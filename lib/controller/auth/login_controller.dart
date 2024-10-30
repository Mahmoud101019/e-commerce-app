import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  goPageSignUp();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {}

  @override
  goPageSignUp() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
