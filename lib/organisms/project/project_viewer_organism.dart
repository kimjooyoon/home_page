import 'package:flutter/material.dart';
import 'package:home_page/molecules/project/project_list_item_molecule.dart';
import 'package:home_page/molecules/project/project_search_molecule.dart';

class ProjectViewerOrganism extends StatelessWidget {
  const ProjectViewerOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ProjectSearchMolecule(), ProjectListItemMolecule()],
    );
  }
}
