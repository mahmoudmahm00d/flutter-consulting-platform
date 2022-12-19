import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/login/login_screen.dart';
import 'package:flutter_consulting_platform/screens/shared/shared_scaffold.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/colors.dart';
import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var role="User";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: const Image(
                      image: AssetImage('asset/images/pngs/4.png'))),
              SizedBox(
                height: 24,
              ),
              Center(
                child: InputField(
                  icon: Icon(
                    PhosphorIcons.user,
                    color: ApplicationColors.primaryButtonColor,
                  ),
                  inputController: TextEditingController(),
                  hintText: 'FullName'.tr,
                  label: 'FullName'.tr,
                ),
              ),
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
              Center(
                child: InputField(
                  icon: Icon(
                    PhosphorIcons.password,
                    color: ApplicationColors.primaryButtonColor,
                  ),
                  inputController: TextEditingController(),
                  hintText: 'ConfirmPassword'.tr,
                  label: 'ConfirmPassword'.tr,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ApplicationText(text: 'User'.tr),
                  Radio(activeColor: ApplicationColors.primaryBackground,value: 'User', groupValue: role, onChanged: (val) {
                    setState(() {
                      role = 'User';
                    });
                  }),
                  ApplicationText(text: 'Specialist'.tr),
                  Radio(activeColor: ApplicationColors.primaryBackground,value: 'Specialist', groupValue: role, onChanged: (val) {
                    setState(() {
                      role='Specialist';
                    });
                  }),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              ApplicationPrimaryButton(
                text: 'Login'.tr,
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
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
