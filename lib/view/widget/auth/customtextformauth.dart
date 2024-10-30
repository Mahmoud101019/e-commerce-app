import 'package:flutter/material.dart';

class Customtextformauth extends StatelessWidget {
  final String hinttext;
  final String lable;
  final Icon icon;
  final Icon? prefixIcon;
  final TextEditingController controller;
  const Customtextformauth({
    super.key,
    required this.hinttext,
    required this.lable,
    required this.icon,
    required this.controller,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(lable),
          ),
          hintText: hinttext,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          suffixIcon: icon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
