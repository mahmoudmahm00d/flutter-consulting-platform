import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/models/specialists.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:get/get.dart';

import '../../shared/custom.dart';

class SpecializesWidget extends StatelessWidget {
  final List<Specialize?>? specializes;
  const SpecializesWidget({super.key, this.specializes});

  @override
  Widget build(BuildContext context) {
    if (specializes?.isEmpty ?? true) {
      return ApplicationSecondaryButton(
        text: 'Add Specializes',
        onPressed: () {
          Get.toNamed("/add_specialize");
        },
      );
    }

    return Column(
      children: [
        Column(
          children: specializes!
              .map((e) => SpecializeCard(
                    title: e?.name ?? '',
                    description: e?.description ?? '',
                    price: e?.price.toString() ?? "0.0",
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 16,
        ),
        ApplicationSecondaryButton(
          text: 'Add Specializes',
          onPressed: () {
            Get.toNamed("/add_specialize");
          },
        )
      ],
    );
  }
}
