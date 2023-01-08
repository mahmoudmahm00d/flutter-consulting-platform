import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:get/get.dart';
import '/screens/login/login_controller.dart';
import '/screens/shared/application_buttons.dart';
import '/screens/shared/input_fields.dart';
import '/screens/shared/shared_scaffold.dart';
import '/screens/shared/text.dart';
import '/core/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LoginController>();
    return SafeArea(
      child: SharedScaffold(
        body: SingleChildScrollView(
          child: Form(
            key: controller.key,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: SvgPicture.asset('asset/images/svgs/welcoming.svg'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
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
                    type: TextInputType.visiblePassword,
                    obscure: true,
                    icon: const Icon(
                      PhosphorIcons.password,
                      color: ApplicationColors.primaryButtonColor,
                    ),
                    inputController: controller.password,
                    hintText: 'Password'.tr,
                    label: 'Password'.tr,
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
                ApplicationPrimaryButton(
                  text: 'Login'.tr,
                  onPressed: () {
                    if (controller.key.currentState!.validate()) {
                      controller.login();
                    }
                  },
                ),
                const SizedBox(
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
                        Get.offAllNamed('/register');
                      },
                      child: ApplicationText(
                        text: 'Register'.tr,
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
