import 'package:flutter/material.dart';
import 'package:home_page/pages/navigation/navigation_layout.dart';
import 'package:home_page/pages/login/auth_page.dart';

final ThemeData appDarkTheme = ThemeData(
  primaryColor: Colors.blue,
  hintColor: Colors.orange,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'Roboto', fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontFamily: 'Roboto', fontSize: 14, color: Colors.black54),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.blue, // 활성화된 탭 텍스트 색상
    unselectedLabelColor: Colors.white, // 비활성화된 탭 텍스트 색상
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
);

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
        '/navigation': (context) => NavigationLayout(isAdmin: true),
      },
    );
  }
}
