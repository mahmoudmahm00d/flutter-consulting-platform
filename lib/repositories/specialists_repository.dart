import 'package:dio/dio.dart';
import 'package:flutter_consulting_platform/models/specialists.dart';
import '/core/constants.dart';
import '/core/networking.dart';
import '../models/categories.dart';

class SpecialistsRepository {
  late Networking _networking;
  SpecialistsRepository() {
    _networking = Networking();
  }

  Future<Specialists> specialists() async {
    try {
      var response = await _networking.get(ApiEndPoints.specialists);
      return Specialists.fromJson(response.data);
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

      return Specialists(
        status: status,
        code: e.response!.statusCode,
        message: message,
        data: [],
      );
    }
  }
}
