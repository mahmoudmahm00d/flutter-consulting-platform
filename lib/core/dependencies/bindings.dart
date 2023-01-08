import 'package:get/get.dart';

import '/repositories/auth_repository.dart';
import '/screens/dashboard/dashboard_controller.dart';
import '/screens/categories/categories_controller.dart';
import '/screens/login/login_controller.dart';
import '/screens/register/register_controller.dart';
import '/screens/specialists/specialists_controller.dart';

class SpecialistsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SpecialistsController>(SpecialistsController());
  }
}

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthRepository>(AuthRepository());
    Get.put<LoginController>(LoginController());
  }
}

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthRepository>(AuthRepository());
    Get.put<RegisterController>(RegisterController());
  }
}

class CategoriesBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CategoriesController>(CategoriesController());
  }
}

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(DashboardController());
  }
}
