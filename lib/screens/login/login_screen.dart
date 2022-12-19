import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/categories/categories_screen.dart';
import 'package:flutter_consulting_platform/screens/register/register_screen.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/input_fields.dart';
import 'package:flutter_consulting_platform/screens/shared/shared_scaffold.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Image(image: AssetImage('asset/images/pngs/welcome.png')),
              SizedBox(
                height: 24,
              ),
              Center(
                child: InputField(
                  icon: Icon(
                    PhosphorIcons.at,
                    color: ApplicationColors.primaryButtonColor,
                  ),
                  inputController: TextEditingController(),
                  hintText: 'Email'.tr,
                  label: 'Email'.tr,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: InputField(
                  icon: Icon(
                    PhosphorIcons.password,
                    color: ApplicationColors.primaryButtonColor,
                  ),
                  inputController: TextEditingController(),
                  hintText: 'Password'.tr,
                  label: 'Password'.tr,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ApplicationPrimaryButton(
                text: 'Login'.tr,
                onPressed: () {
                  Get.offAll(CategoriesScreen());
                },
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ApplicationText(text: 'NewToApp'.tr),
                  TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: ApplicationColors.primaryFont),
                      onPressed: () {
                        Get.offAll(RegisterScreen());
                      },
                      child: ApplicationText(
                        text: 'Register'.tr,
                        color: ApplicationColors.primaryFont,
                      ))
                ],
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
