import 'package:flutter/material.dart';
import 'package:home_page/molecules/project_card/project_card.dart';  // ProjectCard 임포트

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome, [User]',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Project Overview', style: TextStyle(fontSize: 20)),
            // 주요 프로젝트 카드들
            Expanded(
              child: ListView(
                children: <Widget>[
                  ProjectCard(projectName: 'Project 1', progress: 0.7),
                  ProjectCard(projectName: 'Project 2', progress: 0.4),
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
