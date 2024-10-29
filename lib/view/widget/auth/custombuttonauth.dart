import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';

class Custombuttonauth extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const Custombuttonauth(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        height: 45,
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColor.backgroundColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
