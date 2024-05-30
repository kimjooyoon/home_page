import 'package:flutter/material.dart';

class DesignTokens {
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.orange;
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.white;
  static const Color hintTextColor = Colors.white70;
  static const Color borderColor = Colors.white;
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
}
