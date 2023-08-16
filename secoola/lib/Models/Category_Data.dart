class OpenseaModel {
  OpenseaModel({
    required this.assets,
  });

  List<Assets>? assets;

  OpenseaModel.fromJson(Map<String, dynamic> json) {
    assets = List.from(json['assets']).map((e) => Assets.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['assets'] = assets!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Assets {
  Assets({
    required this.image,
    required this.name,
    required this.id,
    required this.updated_at,
    required this.created_at,

  });

String? image;
String? name;
int? id;
String? updated_at;
String? created_at;

  Assets.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    id = json['id'];
    updated_at = json['updated_at'];
    created_at = json['created_at'];

  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image;
    _data['name'] = name;
    _data['id'] = id;
    _data['created_at'] = created_at;
    _data['updated_at'] = updated_at;

    return _data;
  }
}