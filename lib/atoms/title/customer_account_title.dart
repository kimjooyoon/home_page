import 'package:flutter/material.dart';

class CustomerAccountTitle extends StatelessWidget {
  final String title;

  const CustomerAccountTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
