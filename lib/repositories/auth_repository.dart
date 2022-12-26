import 'dart:developer';

import 'package:dio/dio.dart';
import '/core/constants.dart';
import '/core/networking.dart';
import '/models/auth/login.dart';
import '/models/auth/register.dart';
import '/models/base_response.dart';

class AuthRepository {
  late Networking _networking;
  AuthRepository() {
    _networking = Networking();
  }

  Future<LoginResponse> login(String email, String password) async {
    try {
      var response = await _networking.post(
        ApiEndPoints.login,
        LoginRequest(
          email: email,
          password: password,
        ).toJson(),
      );

      return LoginResponse.fromJson(response.data)
        ..status = 'success'
        ..code = 200;
    } on DioError catch (e) {
      return LoginResponse(message: e.message, status: 'error');
    }
  }

  Future<BaseResponse> register(
    String email,
    String password,
    String name,
    String phone,
    String role,
  ) async {
    try {
      await _networking.post(
        ApiEndPoints.register,
        RegisterRequest(
          email: email,
          password: password,
          name: name,
          phoneNumber: phone,
          role: role,
        ).toJson(),
      );

      return BaseResponse(
        status: 'success',
        code: 204,
        message: 'Account created successfully',
      );
    } on DioError catch (e) {
      return BaseResponse(message: e.message, status: 'error');
    }
  }
}
