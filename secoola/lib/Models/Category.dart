
class ApiResponse {
  final bool status;
  final String message;
  final List<Map<String, dynamic>> data;

  ApiResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'],
      message: json['message'],
      data: List<Map<String, dynamic>>.from(json['data']),
    );
  }
}
class ProgrammingTopic {
  final int id;
  final String name;
  final String image;
  final String createdAt;
  final String updatedAt;

  ProgrammingTopic({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProgrammingTopic.fromJson(Map<String, dynamic> json) {
    return ProgrammingTopic(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
