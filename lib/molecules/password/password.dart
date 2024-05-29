import 'package:flutter/material.dart';
import 'package:home_page/atoms/input/input.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;

  const PasswordInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      labelText: 'Password',
      obscureText: true,
    );
  }
}
