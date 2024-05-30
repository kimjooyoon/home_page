import 'package:home_page/models/project.dart';

List<Project> getMockProjects() {
  return [
    Project(name: 'Project 1', progress: 0.8),
    Project(name: 'Project 2', progress: 0.6),
    Project(name: 'Project 3', progress: 0.4),
  ];
}
