import 'package:flutter_consulting_platform/models/specialists.dart';
import '/repositories/specialists_repository.dart';
import 'package:get/get.dart';

class SpecialistsByCategoryController extends GetxController {
  RxList<Specialist?> specialists = <Specialist?>[].obs;
  var loading = true.obs;
  String title = 'Specialists';
  late SpecialistsRepository _repository;

  @override
  void onInit() async {
    _repository = SpecialistsRepository();
    loading.value = true;

    var category = Get.arguments;

    var response = await _repository.specialistsByCategory(category);
    specialists.value = response.data!;

    loading.value = false;
    super.onInit();
  }
}
