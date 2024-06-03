// pages/sign_up_page.dart
import 'package:flutter/material.dart';
import 'package:home_page/templates/base/base_template.dart';
import 'package:home_page/molecules/form/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      title: 'Sign Up',
      child: SignUpForm(
        onSignUp: () {
          // 회원가입 로직
          Navigator.pushReplacementNamed(context, '/login');
        },
      ),
    );
  }
}
