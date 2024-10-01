import 'package:e_commerce_app/core/constant/imageassets.dart';
import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/core/localization/changelocale.dart';
import 'package:e_commerce_app/view/widget/language/customlanguagebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<ChangeLocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImageAssets.logoimage),
              Text(
                "1".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomLanguageButton(
                buttonName: "Ar",
                onPressed: () {
                  controller.changelang("ar");
                  Get.toNamed(AppRoutes.onBoarding);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomLanguageButton(
                buttonName: "En",
                onPressed: () {
                  controller.changelang("en");
                  Get.toNamed(AppRoutes.onBoarding);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
