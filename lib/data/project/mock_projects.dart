import 'package:home_page/models/project/project.dart';

List<Project> getMockProjects() {
  return [
    Project(title: 'Project 1', progress: 0.8),
    Project(title: 'Project 2', progress: 0.6),
    Project(title: 'Project 3', progress: 0.4),
  ];
}
