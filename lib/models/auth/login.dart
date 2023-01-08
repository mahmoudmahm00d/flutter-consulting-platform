import 'dart:convert';

import '/models/base_response.dart';

LoginRequest loginRequestFromJson(String str) =>
    LoginRequest.fromJson(json.decode(str));

String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());

class LoginRequest {
  LoginRequest({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

class LoginResponse extends BaseResponse {
  LoginResponse({
    super.status,
    super.code,
    super.message,
    super.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'],
      code: json['code'],
      message: json['message'],
      data: AccessTokenResponse.fromJson(json['data']),
    );
  }
}

class AccessTokenResponse {
  String? accessToken;
  String? role;
  String? tokenType;
  int? expiresIn;

  AccessTokenResponse({
    this.accessToken,
    this.role,
    this.tokenType,
    this.expiresIn,
  });

  static fromJson(Map<String, dynamic> json) {
    if (json == null || json.isEmpty) {
      return null;
    }

    return AccessTokenResponse(
      accessToken: json["access_token"],
      role: json["role"],
      tokenType: json["token_type"],
      expiresIn: json["expires_in"],
    );
  }
}
