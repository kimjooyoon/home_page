import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:home_page/atoms/button/custom_button.dart';

@widgetbook.UseCase(name: 'Default', type: CustomButton)
Widget buildCustomButtonUseCase(BuildContext context) {
  return CustomButton(
    text: "text",
    onPressed: () {},
  );
}
