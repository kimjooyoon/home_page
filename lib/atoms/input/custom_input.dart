import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/design_tokens.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;

  const CustomInput({
    Key? key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: DesignTokens.labelTextStyle,
        hintStyle: DesignTokens.hintTextStyle,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DesignTokens.borderColor),
          borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DesignTokens.focusedBorderColor),
          borderRadius: BorderRadius.circular(DesignTokens.borderRadius),
        ),
      ),
      style: DesignTokens.inputTextStyle,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
