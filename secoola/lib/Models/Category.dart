// //
// import 'dart:convert';
//
// Catgeory catgeoryFromJson(String str) => Catgeory.fromJSON(json.decode(str));
//
// String catgeoryToJson(Catgeory data) => json.encode(data.toJson());
//
// class Catgeory {
//   bool status;
//   String message;
//   List<Photo> data;
//
//   Catgeory({
//     required this.status,
//     required this.message,
//     required this.data,
//   });
//
//   // factory Catgeory.fromJson(Map<String, dynamic> json) => Catgeory(
//   //   status: json["status"],
//   //   message: json["message"],
//   //   data: List<Photo>.from(json["data"].map((x) => Photo.fromJSON(x))),
//   // );
//   factory Catgeory.fromJSON(Map<String, dynamic> map)
//   {
//     return Catgeory(
//       status: map["status"],
//         message: map["message"],
//         data: List<Photo>.from(map["data"].map((x) => Photo.fromJSON(x))),
//     );
//   }
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "message": message,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// // class Datum {
// //   int id;
// //   String name;
// //   String image;
// //   DateTime createdAt;
// //   DateTime updatedAt;
// //
// //   Datum({
// //     required this.id,
// //     required this.name,
// //     required this.image,
// //     required this.createdAt,
// //     required this.updatedAt,
// //   });
// //
// //   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
// //     id: json["id"],
// //     name: json["name"],
// //     image: json["image"],
// //     createdAt: DateTime.parse(json["created_at"]),
// //     updatedAt: DateTime.parse(json["updated_at"]),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "id": id,
// //     "name": name,
// //     "image": image,
// //     "created_at": createdAt.toIso8601String(),
// //     "updated_at": updatedAt.toIso8601String(),
// //   };
// // }
// class Photo{
//   final int name;
//   final int id;
//   final String image;
//   final String created_at;
//   final String updated_at;
//
//   const Photo({
//     required this.name,
//     required this.id,
//     required this.image,
//     required this.created_at,
//     required this.updated_at
//   });
//
//   factory Photo.fromJSON(Map<String, dynamic> map)
//   {
//     return Photo(
//         name: map['name'],
//         id: map['id'],
//         image: map['image'],
//         created_at: map['created_at'],
//         updated_at: map['updated_at']
//     );
//   }  Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "image": image,
//     "created_at": created_at.toString(),
//     "updated_at": updated_at.toString(),
//   };
// }
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
