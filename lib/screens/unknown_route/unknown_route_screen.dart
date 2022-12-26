import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const ApplicationText(
                text: 'This page not found',
                size: 24,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset('asset/images/svgs/not_found.svg'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Center(
                child: ApplicationPrimaryButton(
                  text: 'Back to homepage',
                  onPressed: () => Get.toNamed('/home'),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
