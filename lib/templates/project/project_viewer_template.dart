import 'package:flutter/material.dart';
import 'package:home_page/models/project/project.dart';
import 'package:home_page/organisms/project/project_viewer_dash_organism.dart';
import 'package:home_page/organisms/project/project_viewer_organism.dart';

class ProjectViewerTemplate extends StatelessWidget {
  final List<String> options;
  final List<Project> projects;

  const ProjectViewerTemplate(
      {super.key, required this.options, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProjectViewerDashOrganism(),
        ProjectViewerOrganism(
          options: options,
          projects: projects,
        )
      ],
    );
  }
}
