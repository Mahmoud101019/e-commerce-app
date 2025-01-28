import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class ResetPasswordSuccessController extends GetxController {
  gotoLoginPage();
}

class ResetPasswordSuccessControllerImpl
    extends ResetPasswordSuccessController {
  @override
  gotoLoginPage() {
    Get.offAllNamed(AppRoutes.login);
  }
}
