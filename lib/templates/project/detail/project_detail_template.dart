import 'package:flutter/material.dart';
import 'package:home_page/organisms/project/detail/project_document_info_organism.dart';
import 'package:home_page/organisms/project/detail/project_info_organism.dart';
import 'package:home_page/organisms/project/detail/project_meeting_info_organism.dart';
import 'package:home_page/organisms/project/detail/project_work_organism.dart';

class ProjectDetailTemplate extends StatelessWidget {
  const ProjectDetailTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProjectInfoOrganism(),
        Column(
          children: [
            ProjectDocumentInfoOrganism(),
            ProjectMeetingInfoOrganism(),
            ProjectWorkOrganism()
          ],
        )
      ],
    );
  }
}
