import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifycodeController extends GetxController {
  checkCode();
  goToResetPasswrod();
}

class VerifycodeControllerImpl extends VerifycodeController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToResetPasswrod() {
    Get.offAllNamed(AppRoutes.resetpassword);
  }

}
