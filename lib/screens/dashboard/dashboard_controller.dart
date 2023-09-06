import 'package:flutter_consulting_platform/screens/categories/categories_controller.dart';
import 'package:flutter_consulting_platform/screens/profile/profile_controller.dart';
import 'package:flutter_consulting_platform/screens/search/search_controller.dart';
import 'package:flutter_consulting_platform/screens/specialists/specialists_controller.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  @override
  void onInit() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
    Get.lazyPut<SpecialistsController>(() => SpecialistsController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<SearchController>(() => SearchController());
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
