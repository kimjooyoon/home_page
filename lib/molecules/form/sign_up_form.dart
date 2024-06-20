// molecules/sign_up_form.dart
import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/button_atom.dart';
import 'package:home_page/atoms/input/custom_input.dart';

class SignUpForm extends StatelessWidget {
  final VoidCallback onSignUp;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpForm({super.key, required this.onSignUp});

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
        CustomInput(
          controller: nameController,
          labelText: 'Name',
        ),
        const SizedBox(height: 16),
        CustomInput(
          controller: emailController,
          labelText: 'Email',
        ),
        const SizedBox(height: 16),
        CustomInput(
          controller: passwordController,
          labelText: 'Password',
          obscureText: true,
        ),
        const SizedBox(height: 16),
        ButtonAtom(
          onPressed: onSignUp,
          text: 'Sign Up',
        ),
      ],
    );
  }
}
