import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:home_page/models/project/project.dart';
import 'package:home_page/config/env.dart';
import 'package:home_page/data/project/mock_projects.dart';

class ProjectService {
  final String baseUrl = 'https://api.example.com';

  Future<List<Project>> fetchProjects() async {
    if (Env.isLocal) {
      return Future.value(getMockProjects());
    } else {
      final response = await http.get(Uri.parse('$baseUrl/projects'));

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((project) => Project.fromJson(project)).toList();
      } else {
        throw Exception('Failed to load projects');
      }
    }
  }
}
