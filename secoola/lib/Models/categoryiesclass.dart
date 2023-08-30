class Categoruyclass {
  final int id;
  final String name;
  final String image;

  Categoruyclass({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Categoruyclass.fromJson(Map<String, dynamic> json) {
    return Categoruyclass(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
class Course {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final String ownerCourse;
  final String image;
  final int countStudent;
  final int evaluation;
  final String language;
  Course({
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

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
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