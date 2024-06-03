class Project {
  final String name;
  final double progress;

  Project({required this.name, required this.progress});

  // JSON 데이터를 모델로 변환하는 메서드
  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['name'],
      progress: json['progress'],
    );
  }

  // 모델을 JSON 데이터로 변환하는 메서드
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'progress': progress,
    };
  }
}
