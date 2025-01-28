import 'package:e_commerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class Customlogoverify extends StatelessWidget {
  const Customlogoverify({super.key});

  @override
  Widget build(BuildContext context) {
      return Image.asset(
      AppImageAssets.verificationimage,
      height: 150,
    );
  }
}