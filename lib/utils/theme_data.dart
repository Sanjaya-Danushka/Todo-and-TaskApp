import 'package:flutter/material.dart';
import 'package:todoapp/utils/colors.dart';

class AppThemeData {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kbgColor,
    primaryColor: ThemeData.dark().primaryColor,

    colorScheme: ColorScheme.dark().copyWith(primary: AppColors.kwhiteColor),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kbgColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.kwhiteColor),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.kFabColor,
    ),
  );
}
