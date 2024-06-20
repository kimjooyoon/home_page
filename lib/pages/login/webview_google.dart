import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebviewGoogle extends StatelessWidget {
  const WebviewGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('run webview');
    print(super.key);
    print('up key');

    return Scaffold(
      key: super.key,
      body: InAppWebView(
        key: super.key,
        initialUrlRequest: URLRequest(
            url: WebUri("https://jsonplaceholder.typicode.com/todos/1")),
        initialSettings: InAppWebViewSettings(
          allowsInlineMediaPlayback: false,
          javaScriptEnabled: true,
          mediaPlaybackRequiresUserGesture: false,
        ),
        onWebViewCreated: (controller) {
          print("controller");
          print(controller);
        },
        onConsoleMessage: (controller, consoleMessage) {},
      ),
    );
  }
}
