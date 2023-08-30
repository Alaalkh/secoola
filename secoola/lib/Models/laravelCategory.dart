class LaravelCategory {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;final String created_at;final String updated_at;

  LaravelCategory({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
    required this.created_at,
    required this.updated_at,
  });

  factory LaravelCategory.fromJson(Map<String, dynamic> json) {
    return LaravelCategory(
      id: json["id"],
      categoryId: json["category_id"],
      name: json["name"],
      description: json["description"],
      ownerCourse: json["owner_course"],
      image: json["image"],
      countStudent: json["count_student"],
      evaluation: json["evaluation"],
      language: json["language"],
      created_at: json["created_at"],
      updated_at: json["updated_at"],
    );
  }
}