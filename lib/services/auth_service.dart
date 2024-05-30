import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:home_page/config/env.dart';

class AuthService {
  final String baseUrl = 'https://api.example.com';

  Future<void> signUp(String name, String email, String password) async {
    if (Env.isLocal) {
      // 로컬 환경에서의 Mock 데이터 처리
      print('Mock SignUp: $name, $email, $password');
      return Future.value();
    } else {
      final response = await http.post(
        Uri.parse('$baseUrl/signup'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': name,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 201) {
        // 회원가입 성공 로직
      } else {
        // 오류 처리 로직
        throw Exception('Failed to sign up');
      }
    }
  }

  Future<void> login(String email, String password) async {
    if (Env.isLocal) {
      // 로컬 환경에서의 Mock 데이터 처리
      print('Mock Login: $email, $password');
      return Future.value();
    } else {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // 로그인 성공 로직
      } else {
        // 오류 처리 로직
        throw Exception('Failed to login');
      }
    }
  }

  Future<void> logout() async {
    if (Env.isLocal) {
      // 로컬 환경에서의 Mock 로그아웃 처리
      print('Mock Logout');
      return Future.value();
    } else {
      // 로그아웃 API 호출 (필요시)
      // final response = await http.post(Uri.parse('$baseUrl/logout'));
      // 세션 정리 로직 추가
      // 예: SharedPreferences.clear();
    }
  }
}
