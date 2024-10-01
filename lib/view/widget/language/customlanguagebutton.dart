import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';

class CustomLanguageButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onPressed;
  const CustomLanguageButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
