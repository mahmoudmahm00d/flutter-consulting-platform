import 'package:flutter_consulting_platform/models/user.dart';

import 'categories.dart';

class Specialists {
  Specialists({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String? status;
  String? message;
  int? code;
  List<Specialist?>? data;

  factory Specialists.fromJson(Map<String, dynamic> json) => Specialists(
        status: json["message"],
        code: json["code"],
        data: json["data"] == null
            ? []
            : List<Specialist?>.from(
                json["data"]!.map((x) => Specialist.fromJson(x))),
      );
}

class Rating {
  Rating({
    this.averageRating,
    this.specialistId,
  });

  String? averageRating;
  int? specialistId;

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      averageRating: json["average_rating"],
      specialistId: json["specialist_id"],
    );
  }
}

class Specialist extends User {
  Specialist({
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
  String? gender;
  String? about;
  String? phoneNumber;
  String? profileImage;
  String? email;
  List<Category?>? categories;
  List<Rating?>? ratings;
  List<Contact?>? contacts;
  List<Specialize?>? specializes;
  List<Schedule?>? schedule;

  factory Specialist.fromJson(Map<String, dynamic> json) => Specialist(
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
}

class Contact {
  Contact({
    this.id,
    this.contactInfo,
    this.type,
  });

  int? id;
  String? contactInfo;
  ContactInfoType? type;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["id"],
        contactInfo: json["contact_info"],
        type: ContactInfoType.fromJson(json["type"]),
      );
}

class ContactInfoType {
  ContactInfoType({
    this.name,
    this.url,
    this.icon,
    this.description,
  });

  String? name;
  dynamic url;
  String? icon;
  String? description;

  factory ContactInfoType.fromJson(Map<String, dynamic> json) {
    return ContactInfoType(
      name: json["name"],
      url: json["url"],
      icon: json["icon"],
      description: json["description"],
    );
  }
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

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json["id"],
      day: json["day"],
      from: json["from"],
      to: json["to"],
    );
  }
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
  String? description;
  int? price;
  String? certificate;
  Category? category;

  factory Specialize.fromJson(Map<String, dynamic> json) {
    return Specialize(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      price: json["price"],
      certificate: json["certificate"],
      category: Category.fromJson(json["category"]),
    );
  }
}
