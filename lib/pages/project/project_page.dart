import 'package:flutter/material.dart';
import 'package:home_page/models/project/project.dart';
import 'package:home_page/models/project/project_search.dart';
import 'package:home_page/templates/project/project_viewer_template.dart';

class ProjectViewerPage extends StatelessWidget {
  final ProjectSearchModel projectSearchModel = ProjectSearchModel(
    options: <String>["title"],
  );
  final List<Project> projects = <Project>[
    Project(title: "project 1", progress: 0.1),
    Project(title: "project 2", progress: 0.2),
  ];

  ProjectViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('프로젝트')),
      body: Column(
        children: [
          ProjectViewerTemplate(
            options: projectSearchModel.options,
            projects: projects,
          )
        ],
      ),
    );
  }
}
