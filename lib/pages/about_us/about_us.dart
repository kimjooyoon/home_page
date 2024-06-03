import 'package:flutter/material.dart';
import 'package:home_page/templates/base/base_template.dart';
import 'package:home_page/organisms/content/about_us_content.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseTemplate(
      title: 'About Us',
      child: AboutUsContent(),
    );
  }
}
