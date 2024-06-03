import 'package:flutter/material.dart';

class TransactionTitle extends StatelessWidget {
  final String title;

  const TransactionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
