import 'package:flutter/material.dart';
import 'package:home_page/molecules/project_card/project_card.dart';
import 'package:home_page/services/project_service.dart';
import 'package:home_page/models/project.dart';
import 'package:home_page/pages/project_detail/project_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Project>> futureProjects;

  @override
  void initState() {
    super.initState();
    futureProjects = ProjectService().fetchProjects();
  }

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
              child: FutureBuilder<List<Project>>(
                future: futureProjects,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No projects available'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        Project project = snapshot.data![index];
                        return GestureDetector(
                          onTap: () => _navigateToProjectDetail(context, project.name),
                          child: ProjectCard(projectName: project.name, progress: project.progress),
                        );
                      },
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
