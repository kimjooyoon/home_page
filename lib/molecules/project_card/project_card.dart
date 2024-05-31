import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final double progress;

  const ProjectCard({super.key, required this.projectName, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              projectName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
