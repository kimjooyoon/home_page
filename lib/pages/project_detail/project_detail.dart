import 'package:flutter/material.dart';

class ProjectDetailPage extends StatelessWidget {
  final String projectName;

  const ProjectDetailPage({Key? key, required this.projectName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectName),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Project Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // 프로젝트 상세 내용
          ],
        ),
      ),
    );
  }
}
