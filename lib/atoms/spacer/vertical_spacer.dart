import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/custom_theme_extension.dart';

enum VSpacerSize { small, medium, large }

class VerticalSpacer extends StatelessWidget {
  final VSpacerSize size;

  const VerticalSpacer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomThemeExtension>();

    // 기본값을 설정
    double spacing;
    switch (size) {
      case VSpacerSize.small:
        spacing = customTheme?.smallSpacing ?? 8.0;
        break;
      case VSpacerSize.medium:
        spacing = customTheme?.mediumSpacing ?? 16.0;
        break;
      case VSpacerSize.large:
        spacing = customTheme?.largeSpacing ?? 32.0;
        break;
    }

    return SizedBox(height: spacing);
  }
}
