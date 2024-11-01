import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customforgetpasswordsection extends StatelessWidget {
  final void Function() onPressed;
  const Customforgetpasswordsection({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          "15".tr,
        ),
      ),
    );
  }
}
