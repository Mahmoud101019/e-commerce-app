import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screens/auth/forgetpassword%20Screens/forgetpassword_screen.dart';
import 'package:e_commerce_app/view/screens/auth/forgetpassword%20Screens/resetpassword_screen.dart';
import 'package:e_commerce_app/view/screens/auth/forgetpassword%20Screens/verifycode_screen.dart';
import 'package:e_commerce_app/view/screens/auth/login%20Screens/login_screen.dart';
import 'package:e_commerce_app/view/screens/auth/SignUp%20Screens/signup_screen.dart';
import 'package:e_commerce_app/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth Routes

  AppRoutes.login: (context) => const LoginScreen(),

  AppRoutes.signup: (context) => const SignupScreen(),

  AppRoutes.forgetPassword: (context) => const ForgetpasswordScreen(),

  AppRoutes.verifyCode: (context) => const VerifycodeScreen(),

  AppRoutes.resetpassword: (context) => const ResetpasswordScreen(),

  //OnBoarding Routes
  AppRoutes.onBoarding: (context) => const OnBoardingScreen(),
};
