import 'package:flutter/material.dart';
import 'package:home_page/atoms/text/title_text.dart';
import 'package:home_page/atoms/section/section_container.dart';

class Section extends StatelessWidget {
  final String title;
  final String content;

  const Section({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(text: title),
        SectionContainer(content: content),
      ],
    );
  }
}
