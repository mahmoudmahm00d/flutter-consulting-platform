import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/profile/components/specialist_profile_screen.dart';
import 'package:flutter_consulting_platform/screens/profile/components/user_profile_screen.dart';
import 'package:flutter_consulting_platform/screens/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.loading.isTrue) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (controller.role == 'User') {
        return UserProfileScreen(
          user: controller.user,
        );
      }

      return SpecialistProfileScreen(
        specialist: controller.specialist,
      );
    });
  }
}
