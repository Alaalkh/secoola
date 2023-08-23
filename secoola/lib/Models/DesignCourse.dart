class DesignCourses {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;

  DesignCourses({
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

  factory DesignCourses.fromJson(Map<String, dynamic> json) {
    return DesignCourses(
      id: json["id"],
      categoryId: json["category_id"],
      name: json["name"],
      description: json["description"],
      ownerCourse: json["owner_course"],
      image: json["image"],
      countStudent: json["count_student"],
      evaluation: json["evaluation"],
      language: json["language"],
    );
  }
}