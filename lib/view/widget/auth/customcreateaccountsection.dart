import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';

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
          "Don't have an account?",
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: AppColor.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
