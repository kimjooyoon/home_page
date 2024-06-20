import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
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
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
    allowsInlineMediaPlayback: false,
    javaScriptEnabled: true,
    mediaPlaybackRequiresUserGesture: false,
  );

  PullToRefreshController? pullToRefreshController;
  String url = "";
  double progress = 0;

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
    print('hello main');

    pullToRefreshController = kIsWeb
        ? null
        : PullToRefreshController(
            settings: PullToRefreshSettings(
              color: Colors.blue,
            ),
            onRefresh: () async {
              print('platform:$defaultTargetPlatform');
              if (defaultTargetPlatform == TargetPlatform.android) {
                webViewController?.reload();
              } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                webViewController?.loadUrl(
                    urlRequest:
                        URLRequest(url: await webViewController?.getUrl()));
              }
            },
          );
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
        '/deprecated': (context) => Scaffold(
              body: InAppWebView(
                key: webViewKey,
                initialUrlRequest: URLRequest(url: WebUri(frontend)),
                initialSettings: settings,
                pullToRefreshController: pullToRefreshController,
                onWebViewCreated: (controller) {
                  print("controller");
                  print(controller);
                  webViewController = controller;
                  print(webViewController);
                },
                onLoadStart: (controller, url) {
                  setState(() {
                    print('url !');
                    print(url);
                    this.url = url.toString();
                    // urlController.text = this.url;
                  });
                },
                onPermissionRequest: (controller, request) async {
                  return PermissionResponse(
                      resources: request.resources,
                      action: PermissionResponseAction.GRANT);
                },
                onLoadStop: (controller, url) async {
                  pullToRefreshController?.endRefreshing();
                  setState(() {
                    if (url != null) {
                      this.url = url.toString();
                      // urlController.text = this.url;
                    }
                  });
                },
                onReceivedError: (controller, request, error) {
                  pullToRefreshController?.endRefreshing();
                },
                onProgressChanged: (controller, progress) {
                  if (progress == 100) {
                    pullToRefreshController?.endRefreshing();
                  }
                  setState(() {
                    this.progress = progress / 100;
                    // urlController.text = url;
                  });
                },
                onUpdateVisitedHistory: (controller, url, androidIsReload) {
                  setState(() {
                    this.url = url.toString();
                    // urlController.text = this.url;
                  });
                },
                onConsoleMessage: (controller, consoleMessage) {},
              ),
            ),
        '/navigation': (context) => NavigationLayout(
              isAdmin: true,
              toggleTheme: _toggleTheme, // 테마 토글 함수 전달
              onLogout: _setDarkMode,
            ),
      },
    );
  }
}
