import 'package:flutter/material.dart';
import 'package:home_page/pages/login/webview_google.dart';
import 'package:home_page/pages/navigation/navigation_layout.dart';
import 'package:home_page/pages/login/auth_page.dart';
import 'package:home_page/src/rust/frb_generated.dart';
import 'package:home_page/theme/theme.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}


// const frontend = "https://www.stargaser.co.kr/login/oauth2/code/google";
const frontend = "https://jsonplaceholder.typicode.com/todos/1";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String url = "";
  // final urlController = TextEditingController();

  ThemeMode _themeMode = ThemeMode.dark; // 초기 테마 모드를 다크 모드로 설정

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _setLightMode() {
    setState(() {
      _themeMode = ThemeMode.light;
    });
  }

  void _setDarkMode() {
    setState(() {
      _themeMode = ThemeMode.dark;
    });
  }

  @override
  void initState() {
    super.initState();
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
        '/google': (context) => WebviewGoogle(),
        '/navigation': (context) => NavigationLayout(
              isAdmin: true,
              toggleTheme: _toggleTheme, // 테마 토글 함수 전달
              onLogout: _setDarkMode,
            ),
      },
    );
  }
}
