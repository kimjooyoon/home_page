import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_page/organisms/login_form/login_form.dart';  // 로그인 폼 위젯을 임포트합니다.

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar를 사용하지 않습니다.
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/login.png',  // 배경 이미지 추가
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),  // 반투명 레이어 추가
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg',  // 로고 이미지 추가
                    height: 100,
                  ),
                  const SizedBox(height: 32.0),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
