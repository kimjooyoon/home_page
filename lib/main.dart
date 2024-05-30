import 'package:flutter/material.dart';
import 'package:home_page/pages/navigation/navigation_layout.dart';
import 'package:home_page/pages/login/auth_page.dart';
import 'package:home_page/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.dark; // 초기 테마 모드를 다크 모드로 설정

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _setLightMode() {
    setState(() {
      _themeMode = ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => AuthPage(onLogin: _setLightMode),
        '/navigation': (context) => NavigationLayout(
          isAdmin: true,
          toggleTheme: _toggleTheme, // 테마 토글 함수 전달
        ),
      },
    );
  }
}
