import 'package:flutter/material.dart';
import 'package:home_page/pages/login/login.dart';  // 로그인 페이지 위젯을 임포트합니다.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stargazer Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),  // 로그인 페이지를 home 속성에 설정합니다.
    );
  }
}