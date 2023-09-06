// To parse this JSON data, do
//
//     final specialistProfile = specialistProfileFromJson(jsonString);

import 'dart:convert';

SpecialistProfile? specialistProfileFromJson(String str) =>
    SpecialistProfile.fromJson(json.decode(str));

String specialistProfileToJson(SpecialistProfile? data) =>
    json.encode(data!.toJson());

class SpecialistProfile {
  SpecialistProfile({
    this.code,
    this.status,
    this.data,
  });

  int? code;
  String? status;
  Data? data;

  factory SpecialistProfile.fromJson(Map<String, dynamic> json) =>
      SpecialistProfile(
        code: json["code"],
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.gender,
    this.about,
    this.phoneNumber,
    this.profileImage,
    this.email,
    this.categories,
    this.ratings,
    this.contacts,
    this.specializes,
    this.schedule,
  });

  int? id;
  String? name;
  dynamic gender;
  dynamic about;
  String? phoneNumber;
  dynamic profileImage;
  String? email;
  List<Category?>? categories;
  List<Rating?>? ratings;
  List<Contact?>? contacts;
  List<Specialize?>? specializes;
  List<Schedule?>? schedule;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        gender: json["gender"],
        about: json["about"],
        phoneNumber: json["phone_number"],
        profileImage: json["profile_image"],
        email: json["email"],
        categories: json["categories"] == null
            ? []
            : List<Category?>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        ratings: json["ratings"] == null
            ? []
            : List<Rating?>.from(
                json["ratings"]!.map((x) => Rating.fromJson(x))),
        contacts: json["contacts"] == null
            ? []
            : List<Contact?>.from(
                json["contacts"]!.map((x) => Contact.fromJson(x))),
        specializes: json["specializes"] == null
            ? []
            : List<Specialize?>.from(
                json["specializes"]!.map((x) => Specialize.fromJson(x))),
        schedule: json["schedule"] == null
            ? []
            : List<Schedule?>.from(
                json["schedule"]!.map((x) => Schedule.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
        "about": about,
        "phone_number": phoneNumber,
        "profile_image": profileImage,
        "email": email,
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x!.toJson())),
        "ratings": ratings == null
            ? []
            : List<dynamic>.from(ratings!.map((x) => x!.toJson())),
        "contacts": contacts == null
            ? []
            : List<dynamic>.from(contacts!.map((x) => x!.toJson())),
        "specializes": specializes == null
            ? []
            : List<dynamic>.from(specializes!.map((x) => x!.toJson())),
        "schedule": schedule == null
            ? []
            : List<dynamic>.from(schedule!.map((x) => x!.toJson())),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.image,
    this.pivot,
  });

  int? id;
  String? name;
  dynamic image;
  Pivot? pivot;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "pivot": pivot,
      };
}

class Pivot {
  Pivot({
    this.userId,
    this.categoryId,
  });

  int? userId;
  int? categoryId;

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        userId: json["user_id"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "category_id": categoryId,
      };
}

class Contact {
  Contact({
    this.id,
    this.contactInfo,
    this.type,
  });

  int? id;
  String? contactInfo;
  Type? type;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["id"],
        contactInfo: json["contact_info"],
        type: Type.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "contact_info": contactInfo,
        "type": type!.toJson(),
      };
}

class Type {
  Type({
    this.name,
    this.url,
    this.icon,
    this.description,
  });

  String? name;
  dynamic url;
  String? icon;
  String? description;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        name: json["name"],
        url: json["url"],
        icon: json["icon"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
        "icon": icon,
        "description": description,
      };
}

class Rating {
  Rating({
    this.averageRating,
    this.specialistId,
  });

  String? averageRating;
  int? specialistId;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        averageRating: json["average_rating"],
        specialistId: json["specialist_id"],
      );

  Map<String, dynamic> toJson() => {
        "average_rating": averageRating,
        "specialist_id": specialistId,
      };
}

class Schedule {
  Schedule({
    this.id,
    this.day,
    this.from,
    this.to,
  });

  int? id;
  int? day;
  String? from;
  String? to;

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        day: json["day"],
        from: json["from"],
        to: json["to"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "day": day,
        "from": from,
        "to": to,
      };
}

class Specialize {
  Specialize({
    this.id,
    this.name,
    this.description,
    this.price,
    this.certificate,
    this.category,
  });

  int? id;
  String? name;
  dynamic description;
  int? price;
  dynamic certificate;
  Category? category;

  factory Specialize.fromJson(Map<String, dynamic> json) => Specialize(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        certificate: json["certificate"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "certificate": certificate,
        "category": category!.toJson(),
      };
}
