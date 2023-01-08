import 'package:flutter/material.dart';
import '/core/colors.dart';
import '/repositories/auth_repository.dart';
import '/screens/categories/categories_screen.dart';
import '/screens/login/login_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RegisterController extends GetxController {
  late AuthRepository _repository;
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController phone;
  String role = 'User';

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    _repository = Get.find<AuthRepository>();
    super.onInit();
  }

  Future register() async {
    Get.defaultDialog(
      onWillPop: () async => false,
      title: 'Registering',
      content: const Center(
        child: CircularProgressIndicator(
          color: ApplicationColors.primaryBackground,
        ),
      ),
    );

    var response = await _repository.register(
      email.text,
      password.text,
      name.text,
      phone.text,
      role,
    );

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
            ? 'You made a mistake 😐'
            : 'Unknown error',
      );
    } else {
      Get.toNamed("/login", arguments: 'registered');
    }
  }
}
