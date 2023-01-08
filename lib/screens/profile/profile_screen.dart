import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';
import 'package:flutter_consulting_platform/screens/profile/components/specialist_profile_screen.dart';
import 'package:flutter_consulting_platform/screens/profile/components/user_profile_screen.dart';
import 'package:flutter_consulting_platform/screens/profile/profile_controller.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/custom.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:readmore/readmore.dart';
import '../shared/image.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';

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
