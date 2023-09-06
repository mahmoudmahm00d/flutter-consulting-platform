import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/models/categories.dart';
import 'package:flutter_consulting_platform/repositories/account_repository.dart';
import 'package:flutter_consulting_platform/repositories/categories_repository.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../core/colors.dart';

class AddSpecializeController extends GetxController {
  late CategoriesRepository _categoriesRepository;
  late AccountRepository _accountRepository;

  late List<Category> categories = [];

  late TextEditingController name;
  late TextEditingController description;
  late TextEditingController price;
  late int category;

  var loading = true;
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void onInit() async {
    name = TextEditingController();
    description = TextEditingController();
    price = TextEditingController();

    _categoriesRepository = CategoriesRepository();
    _accountRepository = AccountRepository();

    var response = await _categoriesRepository.categories();
    categories = response.data;
    category = categories[0].id;

    loading = false;

    update();
    super.onInit();
  }

  Future save() async {
    var response = await _accountRepository.addSpecialize(
      name.text,
      description.text,
      double.parse(price.text),
      category,
    );

    if (response.status == 'success') {
      Get.back();
      return;
    }

    Get.snackbar(
      icon: const Icon(PhosphorIcons.info),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      snackPosition: SnackPosition.BOTTOM,
      colorText: ApplicationColors.light,
      margin: const EdgeInsets.all(24),
      backgroundColor: ApplicationColors.red.withAlpha(120),
      'error',
      response.message!,
    );
  }
}
