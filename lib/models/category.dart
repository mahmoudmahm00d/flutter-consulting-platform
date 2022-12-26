class Categories {
  String message;
  List<Category> data;

  Categories({
    required this.message,
    required this.data,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
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
  dynamic image;

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
