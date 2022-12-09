import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';

class ApplicationPrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const ApplicationPrimaryButton({
    super.key,
    required this.text,
    this.width = 240,
    this.height = 48,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ApplicationColors.primaryButtonColor,
          foregroundColor: ApplicationColors.dark,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: ApplicationFonts.defaultFamily,
            color: ApplicationColors.light,
          ),
        ),
      ),
    );
  }
}

class ApplicationSecondaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const ApplicationSecondaryButton({
    super.key,
    required this.text,
    this.width = 240,
    this.height = 48,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: const BorderSide(
            width: 1.5,
            color: ApplicationColors.primaryButtonColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: ApplicationFonts.defaultFamily,
            color: ApplicationColors.primaryFont,
          ),
        ),
      ),
    );
  }
}
