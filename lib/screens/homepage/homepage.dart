import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/fonts.dart';
import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final box = GetStorage();
  int _counter = 0;
  TextEditingController controller = TextEditingController();

  void _changeLocale() {
    if (Get.locale == const Locale('en', 'US')) {
      Get.updateLocale(const Locale('ar', 'SY'));
      box.write("locale", "ar");
    } else {
      Get.updateLocale(const Locale('en', 'US'));
      box.write("locale", "en");
    }
  }

  void _incrementCounter() {
    controller.value;
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Text(
              'Pushed'.tr,
              style: TextStyle(
                fontFamily: ApplicationFonts.defaultFamily,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            EmailFormField(inputController: controller),
            const SizedBox(height: 40),
            InputField(
              type: TextInputType.phone,
              inputController: TextEditingController(),
              label: 'Phone'.tr,
              hintText: '+1 (518) 400 500',
              icon: const Icon(PhosphorIcons.phone),
            ),
            const Spacer(),
            ApplicationSecondaryButton(
              text: 'ChangeLanguage'.tr,
              onPressed: _changeLocale,
            ),
            const SizedBox(height: 20),
            ApplicationPrimaryButton(
              text: 'PressMe'.tr,
              onPressed: _incrementCounter,
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
