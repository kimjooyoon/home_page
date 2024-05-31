import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/custom_theme_extension.dart';

enum SpacerSize { small, medium, large }

class VerticalSpacer extends StatelessWidget {
  final SpacerSize size;

  const VerticalSpacer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomThemeExtension>();

    // 기본값을 설정
    double spacing;
    switch (size) {
      case SpacerSize.small:
        spacing = customTheme?.smallSpacing ?? 8.0;
        break;
      case SpacerSize.medium:
        spacing = customTheme?.mediumSpacing ?? 16.0;
        break;
      case SpacerSize.large:
        spacing = customTheme?.largeSpacing ?? 32.0;
        break;
    }

    return SizedBox(height: spacing);
  }
}
