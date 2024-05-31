import 'package:flutter/material.dart';
import 'package:home_page/atoms/input/custom_input.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;

  const PasswordInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: controller,
      labelText: 'Password',
      obscureText: true,
    );
  }
}
