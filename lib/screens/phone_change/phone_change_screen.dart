import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/colors.dart';
import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';
import '../shared/text.dart';

class PhoneChangeScreen extends StatelessWidget {
  const PhoneChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ApplicationColors.primaryBackground,
          centerTitle: true,
          title: ApplicationText(
            text: "Change Phone".tr,
            color: ApplicationColors.light,
          ),
        ),
        body: Column(

          children: [
            SizedBox(
              height: 24,
            ),
            Center(
              child: InputField(
                type: TextInputType.phone,
                icon: const Icon(
                  PhosphorIcons.phone,
                  color: ApplicationColors.primaryButtonColor,
                ),
                //inputController: controller.phone,
                hintText: 'NewPhone'.tr,
                label: 'NewPhone'.tr,
                validator: (value) {
                  String val = value.toString();
                  if (val.isEmpty) {
                    return 'This field required'.tr;
                  }
                  if (!GetUtils.isPhoneNumber(val)) {
                    return 'Enter a valid phone number'.tr;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child:
              ApplicationPrimaryButton(
                  text: 'Change'.tr,
                  onPressed: () {
                  }

              ),
            )

          ],
        ),
      ),
    );
  }
}
