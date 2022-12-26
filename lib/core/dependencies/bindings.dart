import '/screens/categories/categories_controller.dart';

import '/screens/login/login_controller.dart';
import '/screens/register/register_controller.dart';
import '/screens/specialists/specialists_controller.dart';
import 'package:get/get.dart';

class SpecialistsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialistsController>(() => SpecialistsController());
  }
}

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}

class CategoriesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
  }
}
