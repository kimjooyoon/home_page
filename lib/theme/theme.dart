import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.hintTextColor,
  scaffoldBackgroundColor: Color(0xFFF0F0F0), // 밝은 회색 배경 색상
  backgroundColor: Color(0xFFF0F0F0), // 밝은 회색 배경 색상
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: Colors.black54,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: Colors.black,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.black),
    hintStyle: TextStyle(color: Colors.black54),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.primaryColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.hintTextColor,
  scaffoldBackgroundColor: Colors.black,
  backgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyLarge: DesignTokens.bodyText1,
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: DesignTokens.textColor,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: DesignTokens.textColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: DesignTokens.labelTextStyle,
    hintStyle: DesignTokens.hintTextStyle,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.borderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.focusedBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);
