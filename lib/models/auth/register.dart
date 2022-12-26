import 'dart:convert';

RegisterRequest registerRequestFromJson(String str) =>
    RegisterRequest.fromJson(json.decode(str));

String registerRequestToJson(RegisterRequest data) =>
    json.encode(data.toJson());

class RegisterRequest {
  RegisterRequest({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.role,
    this.gender,
  });

  String email;
  String password;
  String name;
  String phoneNumber;
  String? gender;
  String role;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        email: json["email"],
        password: json["password"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        gender: json["gender"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "name": name,
        "phone_number": phoneNumber,
        "gender": gender,
        "role": role,
      };
}
