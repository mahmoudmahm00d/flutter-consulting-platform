import 'package:flutter_consulting_platform/models/specialists.dart';
import 'package:flutter_consulting_platform/repositories/account_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../models/user.dart';

class ProfileController extends GetxController {
  late User? user;
  late Specialist? specialist;
  late String role;
  late AccountRepository _repository;
  var loading = true.obs;

  @override
  void onInit() async {
    role = GetStorage().read('role');
    _repository = AccountRepository();
    loading.value = true;
    if (role == 'User') {
      var response = await _repository.userProfile();
      user = response.data;
    } else {
      var response = await _repository.specialistProfile();
      specialist = response.data;
    }
    loading.value = false;
    super.onInit();
  }
}
