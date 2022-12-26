import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import '/core/fonts.dart';

class ApplicationText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  const ApplicationText({
    Key? key,
    required this.text,
    this.color = ApplicationColors.dark,
    this.weight = FontWeight.normal,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: ApplicationFonts.defaultFamily,
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
