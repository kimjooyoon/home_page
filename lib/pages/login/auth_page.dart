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
        Navigator.pushReplacementNamed(context, '/navigation');
      },
      onGoogleLogin: () {
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation');
        // Google 로그인 로직
      },
      onGoogleSignUp: () async {
        String url = 'https://www.stargaser.co.kr/api/';
        await _launchURL(url);
        // Google 회원가입 로직
        print("get");
        String url2 = 'https://www.stargaser.co.kr/login/oauth2/code/google';

        http.Response response = await http.get(Uri.parse(url2));
        onLogin();
        Navigator.pushReplacementNamed(context, '/navigation',arguments: Token.fromJson(jsonDecode(response.body)) );
      },
    );
  }
}

_launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
