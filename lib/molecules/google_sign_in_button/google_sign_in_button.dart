import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback onPressed;

  const GoogleSignInButton({
    Key? key,
    required this.onPressed,
    this.buttonWidth = 300.0,
    this.buttonHeight = 50.0,
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
