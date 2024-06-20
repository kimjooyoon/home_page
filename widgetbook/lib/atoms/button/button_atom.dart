import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:home_page/atoms/button/button_atom.dart';

@widgetbook.UseCase(name: 'Default', type: ButtonAtom)
Widget buildCustomButtonUseCase(BuildContext context) {
  return ButtonAtom(
    text: "text",
    onPressed: () {},
  );
}
