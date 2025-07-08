import 'package:bmi_calculator/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme
{
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: AppColors.deepBlueColor,
      elevation: 2.0,
    ),
    scaffoldBackgroundColor: AppColors.deepBlueColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: IconThemeData(
      size: 15,
    ),
  );
}