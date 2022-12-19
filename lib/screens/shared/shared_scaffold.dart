import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';
import 'package:flutter_consulting_platform/screens/login/login_screen.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
              child: Text('Header'),
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
                Get.offAll(LoginScreen());
              },
            )
          ],
        ),
      ),
      appBar: (title != null)
          ? AppBar(
              backgroundColor: ApplicationColors.primaryBackground,
              title: Text(
                title!,
                style: TextStyle(fontFamily: ApplicationFonts.defaultFamily),
              ),
            )
          : null,
      body: body,
    );
  }
}
