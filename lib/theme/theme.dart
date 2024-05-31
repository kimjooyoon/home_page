import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.hintTextColor,
  scaffoldBackgroundColor: DesignTokens.lightModeBackgroundColor,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(background: DesignTokens.lightModeBackgroundColor),
  textTheme: const TextTheme(
    bodyLarge: DesignTokens.lightModeBodyText1,
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: DesignTokens.lightModeTextColor,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: DesignTokens.lightModeTextColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: DesignTokens.lightModeLabelTextStyle,
    hintStyle: DesignTokens.lightModeHintTextStyle,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.lightModeBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.focusedBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: DesignTokens.primaryColor,
  hintColor: DesignTokens.hintTextColor,
  scaffoldBackgroundColor: DesignTokens.darkModeBackgroundColor,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(background: DesignTokens.darkModeBackgroundColor),
  textTheme: const TextTheme(
    bodyLarge: DesignTokens.darkModeBodyText1,
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: DesignTokens.darkModeTextColor,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: DesignTokens.primaryColor,
    unselectedLabelColor: DesignTokens.darkModeTextColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: DesignTokens.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: DesignTokens.darkModeLabelTextStyle,
    hintStyle: DesignTokens.darkModeHintTextStyle,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.darkModeBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: DesignTokens.focusedBorderColor),
      borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
    ),
  ),
);
