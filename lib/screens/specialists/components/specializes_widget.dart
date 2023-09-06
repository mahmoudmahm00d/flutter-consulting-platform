import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:get/get.dart';

import '../../../models/specialist_profile.dart';
import '../../shared/custom.dart';

class Specializes1Widget extends StatelessWidget {
  final List<Specialize?>? specializes;
  const Specializes1Widget({super.key, this.specializes});

  @override
  Widget build(BuildContext context) {
    if (specializes?.isEmpty ?? true) {
      return const ApplicationText(text: 'No Specializes yet');
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: specializes!
            .map((e) => SpecializeCard(
                  title: e?.name ?? '',
                  description: e?.description ?? '',
                  price: e?.price.toString() ?? "0.0",
                ))
            .toList(),
      ),
    );
  }
}
