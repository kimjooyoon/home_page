import 'package:flutter/material.dart';
import 'package:home_page/molecules/project/project_chart_molecule.dart';
import 'package:home_page/molecules/project/project_dash_molecule.dart';
import 'package:home_page/molecules/project/project_detail_molecule.dart';

class ProjectViewerDashOrganism extends StatelessWidget {
  const ProjectViewerDashOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [ProjectDashMolecule(), ProjectDetailMolecule()],
        ),
        Row(
          children: [ProjectChartMolecule()],
        )
      ],
    );
  }
}
