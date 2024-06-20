// atoms/profile_text.dart
import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const ProfileText(
      {super.key, required this.controller, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
