import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customcreateaccountsection extends StatelessWidget {
  final void Function() onPressed;
  const Customcreateaccountsection({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "16".tr,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "17".tr,
            style: TextStyle(
              color: AppColor.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
