class BaseResponse {
  String? status;
  int? code;
  String? message;
  dynamic data;

  BaseResponse({this.status, this.code, this.message, this.data});
}
