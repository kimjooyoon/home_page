// atoms/transaction_text.dart
import 'package:flutter/material.dart';

class TransactionText extends StatelessWidget {
  final String content;

  const TransactionText({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      content,
      style: theme.textTheme.bodyMedium,
    );
  }
}
