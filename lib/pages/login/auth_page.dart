import 'package:flutter/material.dart';
import 'package:home_page/templates/auth_template/auth_template.dart';

class AuthPage extends StatelessWidget {
  final VoidCallback onLogin;

  const AuthPage({
    super.key,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      onLogin: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
      },
      onSignUp: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
      },
      onGoogleLogin: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
        // Google 로그인 로직
      },
      onGoogleSignUp: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
        // Google 회원가입 로직
      },
    );
  }
}
