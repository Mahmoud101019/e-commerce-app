import 'package:e_commerce_app/core/localization/changelocale.dart';
import 'package:e_commerce_app/core/localization/translation.dart';
import 'package:e_commerce_app/core/services/services.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/view/screens/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ChangeLocaleController changeLocaleController =
        Get.put(ChangeLocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: changeLocaleController.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: changeLocaleController.appTheme,
      home: const Language(),
      routes: routes,
    );
  }
}
