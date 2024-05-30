import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.hintTextColor,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
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
  textTheme: const TextTheme(
    bodyText1: DesignTokens.bodyText1,
    bodyText2: TextStyle(
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
