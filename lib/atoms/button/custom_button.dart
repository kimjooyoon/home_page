import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: DesignTokens.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
        ),
        padding: EdgeInsets.all(DesignTokens.padding),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: DesignTokens.bodyText1.copyWith(color: Colors.white),
      ),
    );
  }
}
