import 'package:flutter/material.dart';
import 'package:todoapp/utils/colors.dart';

class AppTextStyle {
  //Typography title style
  static TextStyle appTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,

    color: AppColors.kwhiteColor,
  );

  //Typography subtitle style
  static TextStyle subtitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.kwhiteColor,
  );

  //Typography description-large style
  static TextStyle descriptionLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.kwhiteColor,
  );

  //Typography description-small style
  static TextStyle descriptionSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.kwhiteColor,
  );

  //Typography button style
  static TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.kwhiteColor,
  );

  //Typography body style
  static TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.kwhiteColor,
  );
}
