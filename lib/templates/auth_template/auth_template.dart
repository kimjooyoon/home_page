import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_page/atoms/spacer/spacer.dart';
import 'package:home_page/organisms/auth_forms/auth_forms.dart';

class AuthTemplate extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onSignUp;
  final VoidCallback onGoogleLogin;
  final VoidCallback onGoogleSignUp;

  const AuthTemplate({
    required this.onLogin,
    required this.onSignUp,
    required this.onGoogleLogin,
    required this.onGoogleSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/login.png', // 배경 이미지 추가
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // 반투명 레이어 추가
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg', // 로고 이미지 추가
                    height: 100,
                  ),
                  const VerticalSpacer(height: 32.0), // 로고와 탭 사이의 여백 추가
                  Expanded(
                    child: DefaultTabController(
                      length: 2,
                      child: AuthForms(
                        onLogin: onLogin,
                        onSignUp: onSignUp,
                        onGoogleLogin: onGoogleLogin,
                        onGoogleSignUp: onGoogleSignUp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
