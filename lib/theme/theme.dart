import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.lightHintTextColor,
  scaffoldBackgroundColor: DesignTokens.lightBackgroundColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    background: DesignTokens.lightBackgroundColor,
    secondary: DesignTokens.secondaryColor,
    error: DesignTokens.errorColor,
    surface: DesignTokens.lightBackgroundColor,
    onSurface: DesignTokens.lightTextColor,
    onBackground: DesignTokens.lightTextColor,
    onPrimary: DesignTokens.lightTextColor,
    onSecondary: DesignTokens.lightTextColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: DesignTokens.lightBodyText1,
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: DesignTokens.lightTextColor,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: DesignTokens.lightTextColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: DesignTokens.lightLabelTextStyle,
    hintStyle: DesignTokens.lightHintTextStyle,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: DesignTokens.lightBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: DesignTokens.focusedBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.darkHintTextColor,
  scaffoldBackgroundColor: DesignTokens.darkBackgroundColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    background: DesignTokens.darkBackgroundColor,
    secondary: DesignTokens.secondaryColor,
    error: DesignTokens.errorColor,
    surface: DesignTokens.darkBackgroundColor,
    onSurface: DesignTokens.darkTextColor,
    onBackground: DesignTokens.darkTextColor,
    onPrimary: DesignTokens.darkTextColor,
    onSecondary: DesignTokens.darkTextColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: DesignTokens.darkBodyText1,
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: DesignTokens.darkTextColor,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: DesignTokens.darkTextColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: DesignTokens.darkLabelTextStyle,
    hintStyle: DesignTokens.darkHintTextStyle,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: DesignTokens.darkBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: DesignTokens.focusedBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);
