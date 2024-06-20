import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/title_text.dart';
import 'package:home_page/atoms/text/body_text.dart';

class ProjectOverview extends StatelessWidget {
  final String projectName;
  final double progress;

  const ProjectOverview(
      {super.key, required this.projectName, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: projectName),
        BodyText(text: 'Progress: ${progress * 100}%'),
      ],
    );
  }
}
