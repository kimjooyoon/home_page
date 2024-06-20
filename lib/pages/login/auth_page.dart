import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_page/models/token.dart';
import 'package:home_page/templates/auth_template/auth_template.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class AuthPage extends StatelessWidget {
  final VoidCallback onLogin;

  const AuthPage({
    super.key,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      onLogin: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
      },
      onSignUp: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/google');
      },
      onGoogleLogin: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
        // Google 로그인 로직
      },
      onGoogleSignUp: () async {
        Uri url = Uri.https('www.stargaser.co.kr', 'api/');
        await _launchURL(url);
        // Google 회원가입 로직
        print("get");
        var client = http.Client();
        var uri2 = Uri.https('www.stargaser.co.kr', 'login/oauth2/code/google');
        http.Response response =
            await client.get(uri2).catchError((error) => {print(error)});

        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation',
            arguments: Token.fromJson(jsonDecode(response.body)));
      },
    );
  }
}

_launchURL(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch ${url.toString()}';
  }
}
