import 'package:dio/dio.dart';
import '/core/constants.dart';
import 'package:get_storage/get_storage.dart';

class Networking {
  late Dio _dio;
  static Map<String, dynamic> authHeaders = {
    Headers.acceptHeader: Headers.jsonContentType,
    'Authorization': GetStorage().read('token')
  };

  set headers(Map<String, dynamic> headers) {
    _dio.options.headers = headers;
  }

  Networking() {
    _dio = Dio();
    // Set default configs
    _dio.options.baseUrl = Constants.baseURL;
    _dio.options.connectTimeout = 10000;
    _dio.options.receiveTimeout = 10000;
    _dio.options.headers = {
      Headers.acceptHeader: Headers.jsonContentType,
    };
  }

  Networking.withHeaders(headers) {
    _dio = Dio();
    // Set default configs
    _dio.options.baseUrl = Constants.baseURL;
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.options.headers = headers;
  }

  Future<Response> get(String path) {
    return _dio.get(path);
  }

  Future<Response> post(String path, Map<String, dynamic> json) {
    return _dio.post(
      path,
      data: json,
    );
  }

  Future<Response> put(String path, Map<String, dynamic> json) {
    return _dio.put(
      path,
      data: json,
    );
  }

  Future<Response> delete(String path) {
    return _dio.delete(path);
  }
}
