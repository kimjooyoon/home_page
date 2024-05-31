import 'package:flutter/material.dart';

class DesignTokens {
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.orange;
  static const Color lightModeBackgroundColor = Color(0xFFF0F0F0);
  static const Color darkModeBackgroundColor = Color(0xFF121212);
  static const Color textColor = Colors.white;
  static const Color hintTextColor = Colors.white70;
  static const Color borderColor = Colors.grey;
  static const Color focusedBorderColor = Colors.blue;

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
  static const Color darkModeGridColor = Colors.grey;
  static const Color lightModeGridColor = Colors.grey;

  // Border color
  static const Color darkModeBorderColor = Colors.grey;
  static const Color lightModeBorderColor = Colors.grey;

  // Text color for dark mode and light mode
  static const Color darkModeTextColor = Colors.white;
  static const Color lightModeTextColor = Colors.black;

  // Label and hint text styles for dark mode and light mode
  static const TextStyle darkModeLabelTextStyle = TextStyle(color: darkModeTextColor);
  static const TextStyle darkModeHintTextStyle = TextStyle(color: hintTextColor);
  static const TextStyle darkModeBodyText1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: darkModeTextColor,
  );

  static const TextStyle lightModeLabelTextStyle = TextStyle(color: lightModeTextColor);
  static const TextStyle lightModeHintTextStyle = TextStyle(color: lightModeTextColor);
  static const TextStyle lightModeBodyText1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    color: lightModeTextColor,
  );
}
