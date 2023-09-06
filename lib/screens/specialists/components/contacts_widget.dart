import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';

import '../../../models/specialist_profile.dart';
import '../../shared/custom.dart';

class Contacts1Widget extends StatelessWidget {
  final List<Contact?>? contacts;
  const Contacts1Widget({super.key, this.contacts});

  @override
  Widget build(BuildContext context) {
    if (contacts?.isEmpty ?? true) {
      return const ApplicationText(text: 'No contact info yet');
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: contacts!
            .map((e) => SpecializeCard(
                  title: e?.type?.name ?? '',
                  description: e?.contactInfo ?? '',
                  price: "",
                ))
            .toList(),
      ),
    );
  }
}
