import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:home_page/models/profile/profile.dart';
import 'package:home_page/config/env.dart';
import 'package:home_page/data/profile/mock_profile.dart';

class ProfileService {
  final String baseUrl = 'https://api.example.com';

  Future<Profile> fetchProfile() async {
    if (Env.isLocal) {
      return Future.value(getMockProfile());
    } else {
      final response = await http.get(Uri.parse('$baseUrl/profile'));

      if (response.statusCode == 200) {
        return Profile.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load profile');
      }
    }
  }

  Future<void> saveProfile(Profile profile) async {
    if (Env.isLocal) {
      // 로컬 환경에서의 Mock 저장 처리
      print('Mock Save Profile: ${profile.name}, ${profile.email}, ${profile.phoneNumber}');
      return Future.value();
    } else {
      final response = await http.put(
        Uri.parse('$baseUrl/profile'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(profile.toJson()),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to save profile');
      }
    }
  }
}
