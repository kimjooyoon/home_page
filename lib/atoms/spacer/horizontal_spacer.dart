import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/custom_theme_extension.dart';

enum HSpacerSize { small, medium, large }

class HorizontalSpacer extends StatelessWidget {
  final HSpacerSize size;

  const HorizontalSpacer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomThemeExtension>();

    // 기본값을 설정
    double spacing;
    switch (size) {
      case HSpacerSize.small:
        spacing = customTheme?.smallSpacing ?? 8.0;
        break;
      case HSpacerSize.medium:
        spacing = customTheme?.mediumSpacing ?? 16.0;
        break;
      case HSpacerSize.large:
        spacing = customTheme?.largeSpacing ?? 32.0;
        break;
    }

    return SizedBox(width: spacing);
  }
}
