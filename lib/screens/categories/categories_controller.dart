import '/repositories/categories_repository.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  var categories = [].obs;
  var loading = true.obs;
  late CategoriesRepository _repository;

  @override
  void onInit() async {
    _repository = CategoriesRepository();
    var response = await _repository.categories();
    categories.value = response.data;
    super.onInit();
  }
}
