import 'package:flutter/material.dart';
import 'package:home_page/molecules/google_sign_in_button/google_sign_in_button.dart';
import 'package:home_page/atoms/spacer/spacer.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final double buttonWidth = 300.0; // 버튼 너비를 정의하는 변수
  final double buttonHeight = 50.0; // 버튼 높이를 정의하는 변수
  final VoidCallback onSignUp;
  final VoidCallback onGoogleSignUp;

  SignUpForm({
    Key? key,
    required this.onSignUp,
    required this.onGoogleSignUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        VerticalSpacer(height: 16.0), // 탭과 폼 사이의 여백 추가
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: 'Name',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 32.0),
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
            onPressed: onSignUp,
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        GoogleSignInButton(
          onPressed: onGoogleSignUp,
          buttonWidth: buttonWidth,
          buttonHeight: buttonHeight,
        ),
      ],
    );
  }
}
