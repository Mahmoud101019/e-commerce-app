// ignore_for_file: file_names

import 'package:e_commerce_app/core/constant/colormanager.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColor.grey,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: AppColor.grey,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
  useMaterial3: true,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColor.grey,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: AppColor.grey,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
  useMaterial3: true,
);
