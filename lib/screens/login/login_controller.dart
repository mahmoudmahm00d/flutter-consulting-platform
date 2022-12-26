import 'package:flutter/material.dart';
import '/core/colors.dart';
import '/repositories/auth_repository.dart';
import '/screens/categories/categories_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginController extends GetxController {
  late AuthRepository _repository;
  late TextEditingController email;
  late TextEditingController password;

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    _repository = Get.put<AuthRepository>(AuthRepository());
    if (Get.arguments != null) {
      Get.snackbar(
        icon: const Icon(PhosphorIcons.check),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        snackPosition: SnackPosition.BOTTOM,
        colorText: ApplicationColors.light,
        margin: const EdgeInsets.all(24),
        backgroundColor: ApplicationColors.green.withAlpha(120),
        'You have been registered',
        'Please login now',
      );
    }
    super.onInit();
  }

  Future login() async {
    Get.defaultDialog(
      onWillPop: () async => false,
      title: 'Logging you in',
      content: const Center(
        child: CircularProgressIndicator(
          color: ApplicationColors.primaryBackground,
        ),
      ),
    );

    var response = await _repository.login(email.text, password.text);

    Get.back();

    if (response.status == 'error') {
      Get.snackbar(
        icon: const Icon(PhosphorIcons.info),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        snackPosition: SnackPosition.BOTTOM,
        colorText: ApplicationColors.light,
        margin: const EdgeInsets.all(24),
        backgroundColor: ApplicationColors.red.withAlpha(120),
        'error',
        response.message!.contains('401')
            ? 'Invalid email or password'
            : 'Unknown error',
      );
    } else {
      GetStorage().write('token', response.accessToken);
      var token = GetStorage().read('token');
      Get.to(const CategoriesScreen());
    }
  }
}
