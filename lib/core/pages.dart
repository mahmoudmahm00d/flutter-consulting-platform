import 'package:flutter_consulting_platform/screens/email_change/email_change_screen.dart';
import 'package:get/get.dart';

import '/core/dependencies/bindings.dart';
import '/core/constants.dart';
import '/screens/categories/categories_screen.dart';
import '/screens/homepage/homepage.dart';
import '/screens/login/login_screen.dart';
import '/screens/register/register_screen.dart';

List<GetPage> pages = [
  GetPage(
    name: '/home',
    page: () => const MyHomePage(title: Constants.applicationTitle),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
    binding: LoginBindings(),
  ),
  GetPage(
    name: '/register',
    page: () => const RegisterScreen(),
    binding: RegisterBindings(),
  ),
  GetPage(
    name: '/categories',
    page: () => const CategoriesScreen(),
    binding: CategoriesBindings(),
  ),


];
