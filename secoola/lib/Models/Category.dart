
import 'dart:convert';

Catgeory catgeoryFromJson(String str) => Catgeory.fromJson(json.decode(str));

String catgeoryToJson(Catgeory data) => json.encode(data.toJson());

class Catgeory {
  bool status;
  String message;
  List<Datum> data;

  Catgeory({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Catgeory.fromJson(Map<String, dynamic> json) => Catgeory(
    status: json["status"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String name;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
