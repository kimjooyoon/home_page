import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonWidth;
  final double buttonHeight;

  const GoogleSignInButton({
    Key? key,
    required this.onPressed,
    required this.buttonWidth,
    required this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/google_logo.png'),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
