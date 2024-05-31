import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  final String text;

  const SubtitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.titleMedium,
    );
  }
}
