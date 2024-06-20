import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/button_atom.dart';
import 'package:home_page/atoms/input/custom_input.dart';
import 'package:home_page/molecules/password/password.dart';
import 'package:home_page/molecules/google_sign_in_button/google_sign_in_button.dart';
import 'package:home_page/atoms/spacer/vertical_spacer.dart';
import 'package:home_page/src/rust/api/simple.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final double buttonWidth = 300.0; // 버튼 너비를 정의하는 변수
  final double buttonHeight = 50.0; // 버튼 높이를 정의하는 변수
  final VoidCallback onLogin;
  final VoidCallback onGoogleLogin;

  LoginForm({
    super.key,
    required this.onLogin,
    required this.onGoogleLogin,
  });

  @override
  Widget build(BuildContext context) {
    var text = greet(name: "Email");

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const VerticalSpacer(size: VSpacerSize.medium),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: CustomInput(
            controller: emailController,
            labelText: text,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Enter your email',
          ),
        ),
        const VerticalSpacer(size: VSpacerSize.medium),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: PasswordInput(controller: passwordController),
        ),
        const VerticalSpacer(size: VSpacerSize.large),
        SizedBox(
          width: buttonWidth,
          height: buttonHeight,
          child: ButtonAtom(
            text: 'Login',
            onPressed: onLogin,
          ),
        ),
        const VerticalSpacer(size: VSpacerSize.medium),
        GoogleSignInButton(
          onPressed: onGoogleLogin,
          buttonWidth: buttonWidth,
          buttonHeight: buttonHeight,
        ),
        const VerticalSpacer(size: VSpacerSize.medium),
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
