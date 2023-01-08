import 'package:flutter_consulting_platform/models/categories.dart';

import '/repositories/categories_repository.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  RxList<Category> categories = <Category>[].obs;
  var loading = true.obs;
  late CategoriesRepository _repository;

  @override
  void onInit() async {
    _repository = CategoriesRepository();
    loading.value = true;

    var response = await _repository.categories();
    categories.value = response.data!;

    loading.value = false;
    super.onInit();
  }
}
