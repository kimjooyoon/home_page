import 'package:flutter/material.dart';
import 'package:home_page/models/project/project_detail.dart';
import 'package:home_page/templates/project/detail/project_detail_dash_template.dart';
import 'package:home_page/templates/project/detail/project_detail_template.dart';

class ProjectDetailPages extends StatelessWidget {
  final ProjectDetail projectDetail;

  const ProjectDetailPages({super.key, required this.projectDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("hi")),
        body: const Column(
          children: [ProjectDetailDashTemplate(), ProjectDetailTemplate()],
        ));
  }
}
