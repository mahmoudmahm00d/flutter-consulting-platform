import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';

// custom theme data
ThemeData appTheme = ThemeData(
  useMaterial3: true,
  primarySwatch: const MaterialColor(
    0xffbb6464,
    <int, Color>{
      50: Color(0xfff7eded),
      100: Color(0xfff7eded),
      200: Color(0xffd8a6a6),
      300: Color(0xffc98383),
      400: Color(0xffb95f5f),
      500: Color(0xffa04646),
      600: Color(0xff7c3636),
      700: Color(0xff592727),
      800: Color(0xff351717),
      900: Color(0xff120808)
    },
  ),
);
