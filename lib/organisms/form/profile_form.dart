// organisms/profile_form.dart
import 'package:flutter/material.dart';
import 'package:home_page/atoms/button/custom_button.dart';
import 'package:home_page/molecules/field/profile_info_field.dart';

class ProfileForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final VoidCallback onSave;

  const ProfileForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Profile Information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ProfileInfoField(controller: nameController, labelText: 'Name'),
        ProfileInfoField(controller: emailController, labelText: 'Email'),
        ProfileInfoField(
            controller: phoneNumberController, labelText: 'Phone Number'),
        const SizedBox(height: 32),
        CustomButton(
          onPressed: onSave,
          text: 'Save',
        ),
      ],
    );
  }
}
