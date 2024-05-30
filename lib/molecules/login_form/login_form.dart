import 'package:flutter/material.dart';
import 'package:home_page/atoms/input/input.dart';
import 'package:home_page/molecules/password/password.dart';
import 'package:home_page/molecules/google_sign_in_button/google_sign_in_button.dart';
import 'package:home_page/atoms/spacer/spacer.dart'; // VerticalSpacer 임포트

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final double buttonWidth = 300.0; // 버튼 너비를 정의하는 변수
  final double buttonHeight = 50.0; // 버튼 높이를 정의하는 변수

  final VoidCallback onLogin;
  final VoidCallback onGoogleLogin;

  LoginForm({
    required this.onLogin,
    required this.onGoogleLogin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const VerticalSpacer(height: 16.0), // 로고와 탭 사이의 여백 추가
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: CustomInput(
            controller: emailController,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            hintText: 'Enter your email',
          ),
        ),
        const VerticalSpacer(height: 16.0),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: PasswordInput(controller: passwordController),
        ),
        const VerticalSpacer(height: 32.0),
        Container(
          width: buttonWidth,
          height: buttonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey),
              ),
            ),
            onPressed: onLogin,
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const VerticalSpacer(height: 16.0),
        GoogleSignInButton(
          onPressed: onGoogleLogin,
          buttonWidth: buttonWidth,
          buttonHeight: buttonHeight,
        ),
        const VerticalSpacer(height: 16.0),
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
