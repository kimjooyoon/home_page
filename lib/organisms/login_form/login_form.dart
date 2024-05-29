import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/button.dart';
import 'package:home_page/atoms/input/input.dart';
import 'package:home_page/molecules/password/password.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: CustomInput(
              controller: emailController,
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
              hintText: 'Enter your email',
            )),
        const SizedBox(height: 16.0),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: PasswordInput(controller: passwordController),
        ),
        const SizedBox(height: 32.0),
        CustomButton(
          text: 'Login',
          width: 340,
          onPressed: () {
            // Handle login
          },
        ),
        const SizedBox(height: 16.0),
        TextButton(
          onPressed: () {
            // Handle forgot password
          },
          child: const Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
