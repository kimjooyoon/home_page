import 'package:flutter/material.dart';
import 'package:home_page/molecules/project_card/project_card.dart';
import 'package:home_page/pages/project_detail/project_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _navigateToProjectDetail(BuildContext context, String projectName) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailPage(projectName: projectName)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome, [User]',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Project Overview', style: TextStyle(fontSize: 20)),
            Expanded(
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _navigateToProjectDetail(context, 'Project 1'),
                    child: const ProjectCard(projectName: 'Project 1', progress: 0.7),
                  ),
                  GestureDetector(
                    onTap: () => _navigateToProjectDetail(context, 'Project 2'),
                    child: const ProjectCard(projectName: 'Project 2', progress: 0.4),
                  ),
                  // 추가 프로젝트 카드들
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
