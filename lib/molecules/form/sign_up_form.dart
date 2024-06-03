// molecules/sign_up_form.dart
import 'package:flutter/material.dart';
import 'package:home_page/atoms/field/sign_up_text_field.dart';
import 'package:home_page/atoms/button/sign_up_button.dart';

class SignUpForm extends StatelessWidget {
  final VoidCallback onSignUp;

  const SignUpForm({super.key, required this.onSignUp});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Create Account',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const SignUpTextField(labelText: 'Name'),
        const SizedBox(height: 16),
        const SignUpTextField(labelText: 'Email'),
        const SizedBox(height: 16),
        const SignUpTextField(labelText: 'Password', obscureText: true),
        const SizedBox(height: 16),
        SignUpButton(onPressed: onSignUp),
      ],
    );
  }
}
