import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';

class Customtexttitleauth extends StatelessWidget {
  final String texttitle;
  const Customtexttitleauth({super.key, required this.texttitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      texttitle,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: AppColor.primaryColor,
          ),
    );
  }
}
