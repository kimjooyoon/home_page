import 'package:flutter/material.dart';
import 'package:home_page/molecules/section/section.dart';

class AboutUsContent extends StatelessWidget {
  const AboutUsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Section(title: 'Technology Stack', content: 'Technology Stack Cards'),
          Section(title: 'Solutions & Projects', content: 'Projects Cards'),
          Section(title: 'Services', content: 'Services Description'),
          Section(
              title: 'Solution/Service Preview',
              content: 'Solution/Service Preview'),
          Section(title: 'Vision', content: 'Vision Description'),
          Section(
              title: 'Commitment to Customers',
              content: 'Commitment Description'),
          Section(title: 'Beliefs', content: 'Beliefs Description'),
        ],
      ),
    );
  }
}
