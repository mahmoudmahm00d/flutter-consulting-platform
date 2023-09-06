import 'package:flutter_consulting_platform/screens/profile/components/add_specialize/add_specialize_screen.dart';
import 'package:flutter_consulting_platform/screens/search/search.dart';
import 'package:get/get.dart';

import '/core/dependencies/bindings.dart';
import '/core/constants.dart';
import '/screens/dashboard/dashboard_screen.dart';
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
  GetPage(
    name: '/dashboard',
    page: () => const DashboardScreen(),
    binding: DashboardBindings(),
  ),
  // GetPage(
  //   name: '/search',
  //   page: () => const SearchScreen(),
  //   binding: DashboardBindings(),
  // ),
  GetPage(
    name: '/add_specialize',
    page: () => const AddSpecializeScreen(),
    binding: AddSpecializeBinding(),
  ),
];
