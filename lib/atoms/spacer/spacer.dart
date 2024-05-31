import 'package:flutter/material.dart';
import 'package:home_page/atoms/theme/custom_theme_extension.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;

  const VerticalSpacer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomThemeExtension>();

    double spacing = height;
    if (customTheme != null) {
      if (height == 8.0) {
        spacing = customTheme.smallSpacing;
      } else if (height == 16.0) {
        spacing = customTheme.mediumSpacing;
      } else if (height == 32.0) {
        spacing = customTheme.largeSpacing;
      }
    }

    return SizedBox(height: spacing);
  }
}
