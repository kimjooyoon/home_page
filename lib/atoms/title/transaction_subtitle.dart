import 'package:flutter/material.dart';

class TransactionSubtitle extends StatelessWidget {
  final String subtitle;

  const TransactionSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
