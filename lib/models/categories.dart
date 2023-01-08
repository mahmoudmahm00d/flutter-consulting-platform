import 'base_response.dart';

class Categories extends BaseResponse {
  @override
  final List<Category> data;
  Categories({
    required super.message,
    required super.code,
    required super.status,
    required this.data,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      status: json['status'],
      code: json['code'],
      message: json['message'],
      data: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e))
          .toList(),
    );
  }
}

class Category {
  int id;
  String name;
  String? image;

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
