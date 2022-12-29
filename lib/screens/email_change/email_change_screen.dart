import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';

import '../shared/text.dart';

class EmailChangeScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ApplicationColors.primaryBackground,
          centerTitle: true,
          title: ApplicationText(
            text: "Change Email".tr,
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
              type: TextInputType.emailAddress,
              icon: const Icon(
                PhosphorIcons.at,
                color: ApplicationColors.primaryButtonColor,
              ),
              //inputController: controller.email,
              hintText: 'NewEmail'.tr,
              label: 'NewEmail'.tr,
              validator: (value) {
                String val = value.toString();
                if (val.isEmpty) {
                  return 'This field required'.tr;
                }
                if (!GetUtils.isEmail(val)) {
                  return 'Enter a valid email'.tr;
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
