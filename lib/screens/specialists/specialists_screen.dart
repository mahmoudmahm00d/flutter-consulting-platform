import 'package:flutter/material.dart';
import '/screens/shared/shared_scaffold.dart';
import '/screens/specialists/specialists_controller.dart';
import 'package:get/get.dart';

import '../shared/text.dart';

class SpecialistsScreen extends StatelessWidget {
  const SpecialistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SpecialistsController>();
    return SharedScaffold(
      body: Center(
        child: Obx(
          () {
            if (controller.data.toString().isNotEmpty) {
              return ApplicationText(
                text: controller.data.toString(),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
