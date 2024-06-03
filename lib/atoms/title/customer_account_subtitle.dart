import 'package:flutter/material.dart';

class CustomerAccountSubtitle extends StatelessWidget {
  final String subtitle;

  const CustomerAccountSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
