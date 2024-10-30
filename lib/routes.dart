import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app/view/screens/auth/signup_screen.dart';
import 'package:e_commerce_app/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.onBoarding: (context) => const OnBoardingScreen(),
  AppRoutes.signup: (context) => const SignupScreen(),
};
