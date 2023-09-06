import 'package:dio/dio.dart';
import 'package:flutter_consulting_platform/models/base_response.dart';
import 'package:flutter_consulting_platform/models/specialists.dart';
import 'package:flutter_consulting_platform/models/user.dart';
import '/core/constants.dart';
import '/core/networking.dart';

class AccountRepository {
  late Networking _networking;
  AccountRepository() {
    _networking = Networking.withHeaders(Networking.authHeaders);
  }

  Future<UserResponse> userProfile() async {
    try {
      var response = await _networking.get(ApiEndPoints.profile);
      return UserResponse.fromJson(response.data);
    } on DioError catch (e) {
      return UserResponse(
        status: 'error',
        code: e.response!.statusCode,
        message: e.response!.data,
        data: User(),
      );
    }
  }

  Future<SpecialistResponse> specialistProfile() async {
    try {
      var response = await _networking.get(ApiEndPoints.profile);
      return SpecialistResponse.fromJson(response.data);
    } on DioError catch (e) {
      return SpecialistResponse(
        status: 'error',
        code: e.response!.statusCode,
        message: e.response!.data,
        data: Specialist(),
      );
    }
  }

  Future<BaseResponse> addSpecialize(
    String name,
    String description,
    double price,
    int category,
  ) async {
    try {
      var data = {
        "specializes": [
          {
            "name": name,
            "description": description,
            "category": category,
            "price": price,
          }
        ]
      };

      var response = await _networking.post(ApiEndPoints.addSpecializes, data);
      return BaseResponse(
        code: 200,
        status: 'success',
        message: 'Specialize added successfully',
      );
    } on DioError catch (e) {
      String message = "";
      String status = "";

      if (e.type == DioErrorType.connectTimeout) {
        message = e.message;
        status = "error";
      } else {
        message = e.response!.data['message'];
        status = e.response!.data['status'];
      }

      return BaseResponse(message: message, status: status);
    } catch (e) {
      return BaseResponse(
        status: 'error',
        message: e.toString(),
      );
    }
  }
}
