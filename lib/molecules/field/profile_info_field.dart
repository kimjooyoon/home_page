// molecules/profile_info_field.dart
import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/profile_text.dart';

class ProfileInfoField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const ProfileInfoField(
      {super.key, required this.controller, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileText(controller: controller, labelText: labelText),
        const SizedBox(height: 16),
      ],
    );
  }
}
