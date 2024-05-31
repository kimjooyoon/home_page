import 'package:flutter/material.dart';

class DesignTokens {
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.orange;
  static const Color lightBackgroundColor = Color(0xFFF0F0F0);
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color accentColor = Colors.amber;
  static const Color successColor = Colors.green;
  static const Color errorColor = Colors.red;
  static const Color warningColor = Colors.orange;
  static const Color infoColor = Colors.blue;
  static const Color textColor = Colors.white;
  static const Color hintTextColor = Colors.white70;
  static const Color borderColor = Colors.grey;
  static const Color focusedBorderColor = Colors.blue;

  // Light mode specific colors
  static const Color lightTextColor = Colors.black;
  static const Color lightHintTextColor = Colors.black54;

  // Dark mode specific colors
  static const Color darkTextColor = Colors.white;
  static const Color darkHintTextColor = Colors.white70;

  static const double borderRadius = 8.0;
  static const double padding = 16.0;

  static const TextStyle labelTextStyle = TextStyle(color: textColor);
  static const TextStyle hintTextStyle = TextStyle(color: hintTextColor);
  static const TextStyle inputTextStyle = TextStyle(color: textColor);

  // 추가된 bodyText1 스타일
  static const TextStyle bodyText1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: textColor,
  );

  // Grid color
  static const Color darkGridColor = Colors.grey;
  static const Color lightGridColor = Colors.grey;

  // Border color
  static const Color darkBorderColor = Colors.grey;
  static const Color lightBorderColor = Colors.grey;

  // Label and hint text styles for dark mode and light mode
  static const TextStyle darkLabelTextStyle = TextStyle(color: darkTextColor);
  static const TextStyle darkHintTextStyle = TextStyle(color: darkHintTextColor);
  static const TextStyle darkBodyText1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: darkTextColor,
  );

  static const TextStyle lightLabelTextStyle = TextStyle(color: lightTextColor);
  static const TextStyle lightHintTextStyle = TextStyle(color: lightHintTextColor);
  static const TextStyle lightBodyText1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: lightTextColor,
  );

  // 추가된 spacing 값
  static const double smallSpacing = 8.0;
  static const double mediumSpacing = 16.0;
  static const double largeSpacing = 32.0;
}
