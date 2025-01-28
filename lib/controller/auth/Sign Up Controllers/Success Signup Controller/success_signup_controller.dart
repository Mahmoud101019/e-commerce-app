import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  gotoLoginPage();
}

class SuccessSignupControllerImpl extends SuccessSignupController {
  @override
  gotoLoginPage() {
    Get.offAllNamed(AppRoutes.login);
  }
}
