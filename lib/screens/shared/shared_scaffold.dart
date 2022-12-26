import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '/core/colors.dart';
import '/screens/shared/text.dart';

class SharedScaffold extends StatelessWidget {
  final String? title;
  final Widget body;

  const SharedScaffold({Key? key, this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.light,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: ApplicationColors.primaryBackground),
              child: ApplicationText(
                text: 'Header',
                color: ApplicationColors.light,
              ),
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
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: (title != null)
          ? AppBar(
              backgroundColor: ApplicationColors.primaryBackground,
              title: ApplicationText(
                text: title!,
                color: ApplicationColors.light,
              ),
            )
          : null,
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
