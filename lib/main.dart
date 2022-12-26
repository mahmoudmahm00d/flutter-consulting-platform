import 'package:flutter/material.dart';
import '/core/dependencies/bindings.dart';
import '/screens/categories/categories_screen.dart';
import '/screens/login/login_screen.dart';
import '/screens/specialists/specialists_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'core/material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(
    const MyApp(),
  );
}
