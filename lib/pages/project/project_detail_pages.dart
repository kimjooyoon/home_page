import 'package:flutter/material.dart';
import 'package:home_page/templates/project/detail/project_detail_dash_template.dart';
import 'package:home_page/templates/project/detail/project_detail_template.dart';

class ProjectDetailPages extends StatelessWidget {
  const ProjectDetailPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ProjectDetailDashTemplate(), ProjectDetailTemplate()],
    );
  }
}
