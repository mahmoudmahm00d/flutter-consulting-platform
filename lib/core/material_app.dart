import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/unknown_route/unknown_route_screen.dart';
import 'pages.dart';
import 'theme.dart';
import 'constants.dart';
import 'localizations.dart' as locale;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      title: Constants.applicationTitle,
      translations: locale.Localizations(),
      locale: GetStorage().read("locale") == 'ar'
          ? const Locale('ar', 'SY')
          : const Locale('en', 'US'),
      theme: appTheme,
      getPages: pages,
      unknownRoute: GetPage(
        name: '/unknown',
        page: () => const UnknownRouteScreen(),
      ),
      initialRoute: '/login',
    );
  }
}
