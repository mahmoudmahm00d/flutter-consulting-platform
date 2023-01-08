import 'package:dio/dio.dart';
import '/core/constants.dart';
import '/core/networking.dart';
import '../models/categories.dart';

class CategoriesRepository {
  late Networking _networking;
  CategoriesRepository() {
    _networking = Networking();
  }

  Future<Categories> categories() async {
    try {
      var response = await _networking.get(ApiEndPoints.categories);
      return Categories.fromJson(response.data);
    } on DioError catch (e) {
      return Categories(
        status: 'error',
        code: e.response!.statusCode,
        message: e.response!.data,
        data: [],
      );
    }
  }
}
