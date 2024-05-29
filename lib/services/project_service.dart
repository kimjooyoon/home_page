import 'package:home_page/models/project.dart';
import 'package:home_page/data/mock_projects.dart';

class ProjectService {
  // 실제 서버 요청이 있는 경우, 이 메서드를 비동기로 설정하고 HTTP 요청을 사용합니다.
  Future<List<Project>> fetchProjects() async {
    // 실제 서버 요청이 있을 경우: await http.get('YOUR_API_ENDPOINT');
    await Future.delayed(Duration(seconds: 1)); // Mock 데이터 지연 시간
    return mockProjects; // Mock 데이터 반환
  }
}
