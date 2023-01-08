import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/constants.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/bottom_nav_bar.dart';
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
                  Text('Wallet')
                ],
              ),
              onTap: () {},
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
                Get.defaultDialog(
                  titlePadding: const EdgeInsets.only(top: 16.0),
                  contentPadding: const EdgeInsets.all(16.0),
                  content: ApplicationText(
                    text: 'ChangeToLanguage'.tr,
                  ),
                  title: 'ChangeLanguage'.tr,
                  actions: [
                    ApplicationSecondaryButton(
                      text: 'Ok'.tr,
                      width: 60,
                      onPressed: () {},
                    ),
                  ],
                );
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
            )
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
