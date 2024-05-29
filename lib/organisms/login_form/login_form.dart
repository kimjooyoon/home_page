import 'package:flutter/material.dart';
import 'package:home_page/pages/home/home.dart';  // 홈 페이지 임포트

import 'package:home_page/atoms/button/button.dart';
import 'package:home_page/atoms/input/input.dart';
import 'package:home_page/molecules/password/password.dart';

import 'package:home_page/pages/navigation/navigation_layout.dart';

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
            // 로그인 버튼을 누르면 홈 페이지로 네비게이션
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => NavigationLayout(initialIndex: 0)),
            );
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
