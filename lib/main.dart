import 'package:flutter/material.dart';
import 'package:home_page/pages/navigation/navigation_layout.dart';
import 'package:home_page/pages/login/auth_page.dart';
import 'package:home_page/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: appDarkTheme,
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => AuthPage(),
        '/navigation': (context) => NavigationLayout(isAdmin: true), // isAdmin 값을 설정
      },
    );
  }
}
