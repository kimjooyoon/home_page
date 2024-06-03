import 'package:flutter/material.dart';
import 'package:home_page/organisms/lists/project_list.dart';
import 'package:home_page/services/project/project_service.dart';
import 'package:home_page/models/project/project.dart';
import 'package:home_page/pages/project_detail/project_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Future<List<Project>> futureProjects;

  @override
  void initState() {
    super.initState();
    futureProjects = ProjectService().fetchProjects();
  }

  void _navigateToProjectDetail(BuildContext context, String projectName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProjectDetailPage(projectName: projectName),
      ),
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
              child: FutureBuilder<List<Project>>(
                future: futureProjects,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No projects available'));
                  } else {
                    return ProjectList(
                      projects: snapshot.data!,
                      onProjectTap: (projectName) =>
                          _navigateToProjectDetail(context, projectName),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
