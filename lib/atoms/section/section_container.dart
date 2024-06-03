import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final String content;

  const SectionContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 150,
      color: theme.cardColor,
      child: Center(
        child: Text(
          content,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
