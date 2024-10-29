import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customcreateaccountsection.dart';
import 'package:e_commerce_app/view/widget/auth/customforgetpasswordsection.dart';
import 'package:e_commerce_app/view/widget/auth/customlogo.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sign In",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColor.grey,
                ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const Customlogo(),
              const Customtexttitleauth(
                texttitle: "Welcome Back",
              ),
              const Customtextbodyauth(
                textbody:
                    "Sign In With Your Email And Password Or Continue With Social Media",
              ),
              const Customtextformauth(
                hinttext: "Enter Your Email",
                icon: Icon(Icons.email_outlined),
                lable: "Email",
              ),
              const Customtextformauth(
                hinttext: "Enter Your Password",
                icon: Icon(Icons.lock_outline),
                lable: "Password",
              ),
              Customforgetpasswordsection(),
              Custombuttonauth(
                text: "Login",
                onPressed: () {},
              ),
              Customcreateaccountsection(
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
