import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/colors.dart';
import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';
import '../shared/text.dart';

class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ApplicationColors.primaryBackground,
          centerTitle: true,
          title: ApplicationText(
            text: "Change Password".tr,
            color: ApplicationColors.light,
          ),
        ),
        body: Column(

          children: [
            Center(
              child: InputField(
                type: TextInputType.visiblePassword,
                icon: const Icon(
                  PhosphorIcons.password,
                  color: ApplicationColors.primaryButtonColor,
                ),
                obscure: true,

                hintText: 'OldPassword'.tr,
                label: 'OldPassword'.tr,
                validator: (value) {
                  String val = value.toString();
                  if (val.isEmpty) {
                    return 'This field required'.tr;
                  }
                  if (!GetUtils.isLengthGreaterThan(value, 8)) {
                    return 'the password must be greater than 8'.tr;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: InputField(
                type: TextInputType.visiblePassword,
                icon: const Icon(
                  PhosphorIcons.password,
                  color: ApplicationColors.primaryButtonColor,
                ),
                obscure: true,

                hintText: 'NewPassword'.tr,
                label: 'NewPassword'.tr,
                validator: (value) {
                  String val = value.toString();
                  if (val.isEmpty) {
                    return 'This field required'.tr;
                  }
                  if (!GetUtils.isLengthGreaterThan(value, 8)) {
                    return 'the password must be greater than 8'.tr;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: InputField(
                type: TextInputType.visiblePassword,
                icon: const Icon(
                  PhosphorIcons.password,
                  color: ApplicationColors.primaryButtonColor,
                ),

                obscure: true,
                hintText: 'ConfirmPassword'.tr,
                label: 'ConfirmPassword'.tr,
                validator: (value) {
                  String val = value.toString();
                  if (val.isEmpty) {
                    return 'This field required';
                  }
                 // if (!GetUtils.hasMatch(val, controller.password.text)) {
                    return 'The passwords must be the same';
                  }

              ),
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
