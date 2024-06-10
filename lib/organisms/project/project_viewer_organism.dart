import 'package:flutter/material.dart';
import 'package:home_page/models/project/project.dart';
import 'package:home_page/molecules/project/project_list_item_molecule.dart';
import 'package:home_page/molecules/project/project_search_molecule.dart';

class ProjectViewerOrganism extends StatelessWidget {
  final List<String> options;
  final List<Project> projects;

  const ProjectViewerOrganism({super.key, required this.options, required this.projects});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectSearchMolecule(options: options,),

        ...projectListItemWidget(projects)
      ],
    );
  }

  List<ProjectListItemMolecule> projectListItemWidget(List<Project> titles ) {
    List<ProjectListItemMolecule> projects = <ProjectListItemMolecule>[];

    for (var value in titles) {
      projects.add(
        ProjectListItemMolecule(title: value.title)
      );
    }
    return projects;
  }
}
