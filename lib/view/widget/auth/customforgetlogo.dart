import 'package:e_commerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class Customforgetlogo extends StatelessWidget {
  const Customforgetlogo({super.key});

  @override
  Widget build(BuildContext context) {
       return Image.asset(
      AppImageAssets.forgetpasswordimage,
      height: 150,
    );
  }
}