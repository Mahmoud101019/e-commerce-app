import 'package:e_commerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class Customlogo extends StatelessWidget {
  const Customlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAssets.logoimage,
      height: 150,
    );
  }
}
