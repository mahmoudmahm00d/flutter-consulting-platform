import 'package:flutter_consulting_platform/screens/categories/categories_controller.dart';
import 'package:flutter_consulting_platform/screens/profile/profile_controller.dart';
import 'package:flutter_consulting_platform/screens/specialists/specialists_controller.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  @override
  void onInit() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
    Get.lazyPut<SpecialistsController>(() => SpecialistsController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    if (tabIndex == 1) {
      Get.put<SpecialistsController>(SpecialistsController());
    }
    if (tabIndex == 0) {}
    update();
  }
}
