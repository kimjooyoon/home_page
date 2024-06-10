import 'package:flutter/material.dart';

class TitleAtom extends StatelessWidget {
  final String title;

  const TitleAtom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
