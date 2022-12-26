import 'dart:developer';

import 'package:dio/dio.dart';
import '/core/constants.dart';
import '/core/networking.dart';
import '/models/auth/login.dart';
import '/models/auth/register.dart';
import '/models/base_response.dart';
import '/models/category.dart';

class CategoriesRepository {
  late Networking _networking;
  CategoriesRepository() {
    _networking = Networking();
  }

  Future<Categories> categories() async {
    try {
      return (await _networking.get(ApiEndPoints.categories)).data;
    } on Exception catch (e) {
      return Categories(message: 'error', data: []);
    }
  }
}
