import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  // useMaterial3: true,
  primaryColor: AppColors.lightPrimary,
  colorScheme: ColorScheme.light(background: AppColors.lightBackground),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.lightAppBarBackground,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.lightPrimary,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.lightHeadingText,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.lightParagraphText,
      fontSize: 16,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.black),
);

ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.darkPrimary,
  colorScheme: ColorScheme.dark(background: AppColors.darkBackground),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkAppBarBackground,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.darkPrimary,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.darkHeadingText,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.darkParagraphText,
      fontSize: 16,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.white),
);
