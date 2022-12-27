import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RecipeItemMallika1 extends StatelessWidget {
  String title;
  String subtitle;
  RecipeItemMallika1({required this.title, required this.subtitle, Key? key})
      : super(key: key);
  final dishImage =
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FRectangle%2013.png?alt=media&token=6a5f056c-417c-48d3-b737-f448e4f13321";
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        title: Text(title),
        subtitle: Row(
          children: [
            Text(subtitle),
          ],
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
