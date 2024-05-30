import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:home_page/models/project.dart';

class ProjectService {
  final String baseUrl = 'https://api.example.com';

  Future<List<Project>> fetchProjects() async {
    final response = await http.get(Uri.parse('$baseUrl/projects'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((project) => Project.fromJson(project)).toList();
    } else {
      throw Exception('Failed to load projects');
    }
  }
}
