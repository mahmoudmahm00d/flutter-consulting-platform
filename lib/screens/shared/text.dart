import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';

class ApplicationText extends StatelessWidget {
  final String text;
  final Color color;
  const ApplicationText({Key? key, required this.text, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontFamily: ApplicationFonts.defaultFamily
      ,color: color,),
    );
  }
}
