class ApiResponse2 {
  final bool status;
  final String message;
  final Map<String, dynamic> data;

  ApiResponse2({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResponse2.fromJson(Map<String, dynamic> json) {
    return ApiResponse2(
      status: json['status'],
      message: json['message'],
      data: json['data'],
    );
  }
}
class Category {
  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

class PapularCourse {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;

  PapularCourse({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
  });

  factory PapularCourse.fromJson(Map<String, dynamic> json) {
    return PapularCourse(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      ownerCourse: json['owner_course'],
      image: json['image'],
      countStudent: json['count_student'],
      evaluation: json['evaluation'],
      language: json['language'],
    );
  }
}
class DesignTopics {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;

  DesignTopics({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
  });

  factory DesignTopics.fromJson(Map<String, dynamic> json) {
    return DesignTopics(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      ownerCourse: json['owner_course'],
      image: json['image'],
      countStudent: json['count_student'],
      evaluation: json['evaluation'],
      language: json['language'],
    );
  }
}
class CodingTopics {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;

  CodingTopics({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
  });

  factory CodingTopics.fromJson(Map<String, dynamic> json) {
    return CodingTopics(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      ownerCourse: json['owner_course'],
      image: json['image'],
      countStudent: json['count_student'],
      evaluation: json['evaluation'],
      language: json['language'],
    );
  }
}
class MarketingTopics {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;

  MarketingTopics({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
  });

  factory MarketingTopics.fromJson(Map<String, dynamic> json) {
    return MarketingTopics(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      ownerCourse: json['owner_course'],
      image: json['image'],
      countStudent: json['count_student'],
      evaluation: json['evaluation'],
      language: json['language'],
    );
  }
}

