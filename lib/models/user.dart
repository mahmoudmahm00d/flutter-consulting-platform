import 'package:flutter_consulting_platform/models/specialists.dart';

class UserResponse {
  UserResponse({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String? status;
  String? message;
  int? code;
  User? data;

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      status: json["message"],
      code: json["code"],
      data: User.fromJson(json["data"]),
    );
  }
}

class User {
  User({
    this.id,
    this.name,
    this.gender,
    this.about,
    this.phoneNumber,
    this.profileImage,
    this.email,
  });

  int? id;
  String? name;
  String? gender;
  String? about;
  String? phoneNumber;
  String? profileImage;
  String? email;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      gender: json["gender"],
      about: json["about"],
      phoneNumber: json["phone_number"],
      profileImage: json["profile_image"],
      email: json["email"],
    );
  }
}

class SpecialistResponse {
  SpecialistResponse({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String? status;
  String? message;
  int? code;
  Specialist? data;

  factory SpecialistResponse.fromJson(Map<String, dynamic> json) {
    return SpecialistResponse(
      status: json["message"],
      code: json["code"],
      data: Specialist.fromJson(json["data"]),
    );
  }
}
