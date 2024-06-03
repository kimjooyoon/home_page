import 'package:flutter/material.dart';

class MeetingTitle extends StatelessWidget {
  final String title;

  const MeetingTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
