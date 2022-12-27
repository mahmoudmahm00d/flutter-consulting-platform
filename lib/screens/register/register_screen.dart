import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/screens/login/login_screen.dart';
import '/screens/register/register_controller.dart';
import '/screens/shared/shared_scaffold.dart';
import '/screens/shared/text.dart';
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
  var role = "User";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RegisterController>();
    return SafeArea(
      child: SharedScaffold(
        body: SingleChildScrollView(
          child: Form(
            key: controller.key,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SvgPicture.asset('asset/images/svgs/register.svg'),
                  ),
                ),
                ApplicationText(
                  text: 'CreateNewAccount'.tr,
                  size: 24,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: InputField(
                    type: TextInputType.name,
                    icon: const Icon(
                      PhosphorIcons.user,
                      color: ApplicationColors.primaryButtonColor,
                    ),
                    inputController: controller.name,
                    hintText: 'FullName'.tr,
                    label: 'FullName'.tr,
                    validator: (value) {
                      String val = value.toString();
                      if (val.isEmpty) {
                        return 'This field required'.tr;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: InputField(
                    type: TextInputType.emailAddress,
                    icon: const Icon(
                      PhosphorIcons.at,
                      color: ApplicationColors.primaryButtonColor,
                    ),
                    inputController: controller.email,
                    hintText: 'Email'.tr,
                    label: 'Email'.tr,
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
                  child: InputField(
                    type: TextInputType.phone,
                    icon: const Icon(
                      PhosphorIcons.phone,
                      color: ApplicationColors.primaryButtonColor,
                    ),
                    inputController: controller.phone,
                    hintText: 'Phone'.tr,
                    label: 'Phone'.tr,
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
                  child: InputField(
                    type: TextInputType.visiblePassword,
                    icon: const Icon(
                      PhosphorIcons.password,
                      color: ApplicationColors.primaryButtonColor,
                    ),
                    obscure: true,
                    inputController: controller.password,
                    hintText: 'Password'.tr,
                    label: 'Password'.tr,
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
                    inputController: controller.confirmPassword,
                    obscure: true,
                    hintText: 'ConfirmPassword'.tr,
                    label: 'ConfirmPassword'.tr,
                    validator: (value) {
                      String val = value.toString();
                      if (val.isEmpty) {
                        return 'This field required';
                      }
                      if (!GetUtils.hasMatch(val, controller.password.text)) {
                        return 'The passwords must be the same';
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ApplicationText(text: 'User'.tr),
                    Radio(
                        activeColor: ApplicationColors.primaryBackground,
                        value: 'User',
                        groupValue: role,
                        onChanged: (val) {
                          setState(() {
                            controller.role = 'User';
                          });
                        }),
                    ApplicationText(text: 'Specialist'.tr),
                    Radio(
                        activeColor: ApplicationColors.primaryBackground,
                        value: 'Specialist',
                        groupValue: role,
                        onChanged: (val) {
                          setState(() {
                            controller.role = 'Specialist';
                          });
                        }),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ApplicationPrimaryButton(
                  text: 'Register'.tr,
                  onPressed: () {
                    controller.register();
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ApplicationText(text: 'AlreadyHaveAccount'.tr),
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: ApplicationColors.primaryFont),
                      onPressed: () => Get.offAllNamed('/login'),
                      child: ApplicationText(
                        text: 'Login'.tr,
                        color: ApplicationColors.primaryFont,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
