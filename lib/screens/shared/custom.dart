import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:readmore/readmore.dart';

class SpecializeCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  const SpecializeCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        title: Row(
          children: [
            ApplicationText(
              text: title,
              weight: FontWeight.w600,
            ),
            const Spacer(),
            ApplicationText(
              text: price.toString(),
              color: ApplicationColors.primary,
            ),
          ],
        ),
        subtitle: ReadMoreText(
          description,
          trimLines: 2,
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'ShowMore'.tr,
          trimExpandedText: 'ShowLess'.tr,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ApplicationColors.primary,
              fontFamily: ApplicationFonts.defaultFamily),
        ),
      ),
    );
  }
}

class FacebookBtn1 extends StatelessWidget {
  final Function() onPressed;
  const FacebookBtn1({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                PhosphorIcons.facebookLogoFill,
                color: ApplicationColors.primary,
                size: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Facebook",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}

class WhatsappButton extends StatelessWidget {
  final Function() onPressed;
  const WhatsappButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                PhosphorIcons.whatsappLogo,
                color: ApplicationColors.primary,
                size: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Whatsapp",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
