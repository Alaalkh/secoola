

class Api{
  final bool status;
  final String message;
  final List<Map<String, dynamic>> data;

  Api({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Api.fromJson(Map<String, dynamic> json) {
    return Api(
      status: json['status'],
      message: json['message'],
      data: List<Map<String, dynamic>>.from(json['data']),
    );
  }
}

class Data {
  List<Category> category;
  List<Coding> papularCourses;
  List<Coding> design;
  List<Coding> coding;
  List<Markt> markt;

  Data({
    required this.category,
    required this.papularCourses,
    required this.design,
    required this.coding,
    required this.markt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    category: List<Category>.from(json["Category"].map((x) => Category.fromJson(x))),
    papularCourses: List<Coding>.from(json["PapularCourses"].map((x) => Coding.fromJson(x))),
    design: List<Coding>.from(json["Design"].map((x) => Coding.fromJson(x))),
    coding: List<Coding>.from(json["Coding"].map((x) => Coding.fromJson(x))),
    markt: List<Markt>.from(json["Markt"].map((x) => Markt.fromJson(x))),
  );


}

class Category {
  int id;
  String name;
  String image;
  String createdAt;
  String updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );


}

class Coding {
  int id;
  int categoryId;
  String name;
  String description;
  String ownerCourse;
  String image;
  int countStudent;
  int evaluation;
  String language;
  String createdAt;
  String updatedAt;
  CodingCategory category;

  Coding({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });


  factory Coding.fromJson(Map<String, dynamic> json) {
    return Coding(
      id: json["id"],
      categoryId: json["category_id"],
      name: json["name"],
      description: json["description"],
      ownerCourse: json["owner_course"],
      image: json["image"],
      countStudent: json["count_student"],
      evaluation: json["evaluation"],
      language: json["language"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"], category: CodingCategory.fromJson(json["category"]),
    );
  }

}

class CodingCategory {
  int id;
  String name;
  String image;
  String createdAt;
  String updatedAt;

  CodingCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CodingCategory.fromJson(Map<String, dynamic> json) => CodingCategory(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Markt {
  int id;
  int categoryId;
  String name;
  String description;
  String ownerCourse;
  String image;
  int countStudent;
  int evaluation;
  String language;
  String createdAt;
  String updatedAt;
  MarktCategory category;

  Markt({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.ownerCourse,
    required this.image,
    required this.countStudent,
    required this.evaluation,
    required this.language,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });


  factory Markt.fromJson(Map<String, dynamic> json) {
    return Markt(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        ownerCourse: json["owner_course"],
        image: json["image"],
        countStudent: json["count_student"],
        evaluation: json["evaluation"],
        language: json["language"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        category: MarktCategory.fromJson(json["category"]
    ));
  }
}

class MarktCategory {
  int id;
  String name;
  String image;
  String createdAt;
  String updatedAt;

  MarktCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MarktCategory.fromJson(Map<String, dynamic> json) => MarktCategory(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
