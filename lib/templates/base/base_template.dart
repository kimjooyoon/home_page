import 'package:flutter/material.dart';
import 'package:home_page/organisms/app_bar/custom_app_bar.dart';

class BaseTemplate extends StatelessWidget {
  final String title;
  final Widget child;

  const BaseTemplate({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: child,
    );
  }
}
