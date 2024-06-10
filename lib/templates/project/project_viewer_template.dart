
import 'package:flutter/material.dart';
import 'package:home_page/organisms/project/project_viewer_dash_organism.dart';
import 'package:home_page/organisms/project/project_viewer_organism.dart';

class ProjectViewerTemplate extends StatelessWidget {

  const ProjectViewerTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProjectViewerDashOrganism(),
        ProjectViewerOrganism()
      ],
    );
  }

}
