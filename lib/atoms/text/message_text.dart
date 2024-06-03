import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  final String text;

  const MessageText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
