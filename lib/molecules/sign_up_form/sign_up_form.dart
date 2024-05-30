import 'package:flutter/material.dart';
import 'package:home_page/atoms/spacer/spacer.dart'; // VerticalSpacer 임포트

class SignUpForm extends StatelessWidget {
  final void Function() onSignUp;
  final void Function() onGoogleSignUp;
  final double buttonWidth;
  final double buttonHeight;

  const SignUpForm({
    Key? key,
    required this.onSignUp,
    required this.onGoogleSignUp,
    this.buttonWidth = 300.0,
    this.buttonHeight = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const VerticalSpacer(height: 16.0), // 로고와 탭 사이의 여백 추가
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
        GestureDetector(
          onTap: onGoogleSignUp,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/google_logo.png'),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
