import 'package:flutter/material.dart';
import 'package:home_page/molecules/overview/project_overview.dart';
import 'package:home_page/models/project/project.dart';

class ProjectList extends StatelessWidget {
  final List<Project> projects;
  final Function(String) onProjectTap;

  const ProjectList(
      {super.key, required this.projects, required this.onProjectTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return GestureDetector(
          onTap: () => onProjectTap(project.title),
          child: ProjectOverview(
            projectName: project.title,
            progress: project.progress,
          ),
        );
      },
    );
  }
}
