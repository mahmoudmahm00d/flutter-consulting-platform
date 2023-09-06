import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/constants.dart';
import 'package:flutter_consulting_platform/screens/email_change/email_change_screen.dart';
import 'package:flutter_consulting_platform/screens/password_change/password_change_screen.dart';
import 'package:flutter_consulting_platform/screens/phone_change/phone_change_screen.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/bottom_nav_bar.dart';
import 'package:flutter_consulting_platform/screens/wallet/wallet_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '/core/colors.dart';
import '/screens/shared/text.dart';

class SharedScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? bottomNavigationBar;

  const SharedScaffold(
      {Key? key, this.title, required this.body, this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.light,
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: ApplicationColors.primaryBackground),
              child: ApplicationText(
                text: Constants.applicationTitle,
                color: Colors.white,
                size: 20,
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(PhosphorIcons.wallet),
                  SizedBox(
                    width: 12,
                  ),
                  ApplicationText(text: 'Wallet')
                ],
              ),
              onTap: () {
                Get.to(const WalletScreen());
              },
            ),
            const Spacer(),
            ListTile(
              title: Row(
                children: const [
                  Icon(PhosphorIcons.translate),
                  SizedBox(
                    width: 12,
                  ),
                  Text('ChangeLanguage')
                ],
              ),
              onTap: () {
                if (Get.locale == const Locale('en', 'US')) {
                  Get.updateLocale(const Locale('ar', 'SY'));
                  GetStorage().write("locale", "ar");
                } else {
                  Get.updateLocale(const Locale('en', 'US'));
                  GetStorage().write("locale", "en");
                }
              },
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(PhosphorIcons.password),
                  const SizedBox(
                    width: 12,
                  ),
                  Text('ChangePassword'.tr)
                ],
              ),
              onTap: () {
                Get.to(const PasswordChangeScreen());
              },
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(PhosphorIcons.phone),
                  const SizedBox(
                    width: 12,
                  ),
                  Text('ChangePhone'.tr)
                ],
              ),
              onTap: () {
                Get.to(const PhoneChangeScreen());
              },
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(PhosphorIcons.at),
                  const SizedBox(
                    width: 12,
                  ),
                  Text('ChangeEmail'.tr)
                ],
              ),
              onTap: () {
                Get.to(EmailChangeScreen());
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(PhosphorIcons.signOut),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Logout')
                ],
              ),
              onTap: () {
                GetStorage().erase();
                Get.offAllNamed('/login');
              },
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
      appBar: (title != null)
          ? AppBar(
              backgroundColor: Colors.transparent,
              title: ApplicationText(
                text: title!,
                color: ApplicationColors.dark,
                size: 24,
                weight: FontWeight.w600,
              ),
            )
          : null,
      bottomNavigationBar: bottomNavigationBar,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: body,
      ),
    );
  }
}
