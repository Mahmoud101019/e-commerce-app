import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetpasswordControllerImpl extends ResetpasswordController {
  late TextEditingController newPassword;
  late TextEditingController conNewPassword;

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetPasswordScreen);
  }

  @override
  void onInit() {
    newPassword = TextEditingController();
    conNewPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    conNewPassword.dispose();
    super.dispose();
  }
}
