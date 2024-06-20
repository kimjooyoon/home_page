import 'package:flutter/material.dart';
import 'package:home_page/molecules/login_form/login_form.dart';
import 'package:home_page/molecules/sign_up_form/sign_up_form.dart';

class AuthForms extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onSignUp;
  final VoidCallback onGoogleLogin;
  final VoidCallback onGoogleSignUp;

  const AuthForms({
    super.key,
    required this.onLogin,
    required this.onSignUp,
    required this.onGoogleLogin,
    required this.onGoogleSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: 'Login'),
            Tab(text: 'Sign Up'),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              LoginForm(
                onLogin: onLogin,
                onGoogleLogin: onGoogleLogin,
              ),
              SignUpForm(
                onSignUp: onSignUp,
                onGoogleSignUp: onGoogleSignUp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
