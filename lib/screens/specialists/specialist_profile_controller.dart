import 'package:flutter_consulting_platform/models/specialist_profile.dart'
    as profile;
import 'package:flutter_consulting_platform/repositories/specialists_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SpecialistProfileController extends GetxController {
  late profile.Data? specialist;
  late SpecialistsRepository _repository;
  var loading = true.obs;

  @override
  void onInit() async {
    _repository = SpecialistsRepository();
    var id = Get.arguments;
    loading.value = true;

    var response = await _repository.specialistsById(id);
    specialist = response.data;

    loading.value = false;
    update();
    super.onInit();
  }
}
