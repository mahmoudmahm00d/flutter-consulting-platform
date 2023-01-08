import 'package:dio/dio.dart';
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
}
