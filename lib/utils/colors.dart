import 'package:flutter/material.dart';

class AppColors {
  //primary colors
  static Color kbgColor = Color(0xFf202326);
  static Color kwhiteColor = Color(0xFFFFFFFF);
  static Color kFabColor = Color.fromARGB(255, 204, 17, 237);
  static Color kcardColor = Color(0xff2F3235);

  //gradient colors
  static const int gradientStart = 0xFF01F0FF;
  static const int gradientEnd = 0xFF4441ED;

  //linear gradient
  static LinearGradient kprimaryGradient = const LinearGradient(
    colors: [Color(gradientStart), Color(gradientEnd)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
