import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/models/specialists.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:get/get.dart';

import '../../shared/custom.dart';

class ContactsWidget extends StatelessWidget {
  final List<Contact?>? contacts;
  const ContactsWidget({super.key, this.contacts});

  @override
  Widget build(BuildContext context) {
    if (contacts?.isEmpty ?? true) {
      return ApplicationSecondaryButton(
        text: 'AddContacts'.tr,
        onPressed: () {},
      );
    }

    return Column(
      children: [
        Column(
          children: contacts!
              .map((e) => SpecializeCard(
                    title: e?.type?.name ?? '',
                    description: e?.contactInfo ?? '',
                    price: "",
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 16,
        ),
        ApplicationSecondaryButton(
          text: 'AddContacts'.tr,
          onPressed: () {},
        )
      ],
    );
  }
}
