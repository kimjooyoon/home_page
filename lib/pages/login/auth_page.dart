import 'package:flutter/material.dart';
import 'package:home_page/templates/auth_template/auth_template.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      onLogin: () => Navigator.pushReplacementNamed(context, '/navigation'),
      onSignUp: () => Navigator.pushReplacementNamed(context, '/navigation'),
      onGoogleLogin: () {
        // Google 로그인 로직
      },
      onGoogleSignUp: () {
        // Google 로그인 로직
      },
    );
  }
}
