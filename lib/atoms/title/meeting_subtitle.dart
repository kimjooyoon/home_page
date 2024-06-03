import 'package:flutter/material.dart';

class MeetingSubtitle extends StatelessWidget {
  final String subtitle;

  const MeetingSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
