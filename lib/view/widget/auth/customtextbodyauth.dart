import 'package:flutter/material.dart';

class Customtextbodyauth extends StatelessWidget {
  final String textbody;
  const Customtextbodyauth({super.key, required this.textbody});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: Text(
        textAlign: TextAlign.center,
        textbody,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
