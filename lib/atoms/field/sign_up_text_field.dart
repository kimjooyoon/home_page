// atoms/sign_up_text_field.dart
import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;

  const SignUpTextField(
      {super.key, required this.labelText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
