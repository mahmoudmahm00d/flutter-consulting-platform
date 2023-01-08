import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/specialists/specialists_screen.dart';
import '/screens/categories/categories_screen.dart';
import '/screens/profile/profile_screen.dart';
import '/screens/shared/bottom_nav_bar.dart';
import '/screens/shared/shared_scaffold.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return SharedScaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                const CategoriesScreen(),
                const SpecialistsScreen(),
                Container(),
                Container(),
                const ProfileScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
