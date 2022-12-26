import 'package:dio/dio.dart';
import '/core/networking.dart';
import 'package:get/get.dart';

class SpecialistsController extends GetxController {
  var posts = [].obs;
  var loading = false.obs;
  var data = "".obs;

  @override
  void onInit() async {
    Networking networking = Networking();
    try {
      data.value = (await networking.get('specialists')).data.toString();
    } on DioError catch (e) {
      e.type.toString();
    }

    super.onInit();
  }
}
