import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'core/constants.dart';
import 'core/material_app.dart';
import 'core/fonts.dart';
import 'screens/homepage/homepage.dart';
import 'screens/shared/application_buttons.dart';
import 'screens/shared/input_fields.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();

  runApp(
    const MyApp(
      home: MyHomePage(title: Constants.applicationTitle),
    ),
  );
}
