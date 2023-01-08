import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;
  const BottomNavBar({
    Key? key,
    this.currentIndex = 0,
    this.onTap,
  }) : super(key: key);

  final primaryColor = const Color(0xffFF8527);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(PhosphorIcons.house),
        ),
        BottomNavigationBarItem(
          label: "Specialists",
          icon: Icon(PhosphorIcons.graduationCap),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(PhosphorIcons.magnifyingGlass),
        ),
        BottomNavigationBarItem(
          label: "S",
          icon: Icon(PhosphorIcons.calendar),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(PhosphorIcons.user),
        ),
      ],
      unselectedItemColor: ApplicationColors.dark,
      selectedItemColor: ApplicationColors.primary,
      onTap: onTap,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
