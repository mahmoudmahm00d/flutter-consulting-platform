import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: ApplicationText(
            text: 'Wallet',
            color: ApplicationColors.primaryFont,
            size: 24,
            weight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset('asset/images/svgs/vault.svg'),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: ApplicationText(
                text: 'Your wallet balance'.tr,
                color: ApplicationColors.primaryFont,
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: ApplicationText(
                text: '50000.00'.tr,
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Center(
              child: ApplicationText(
                text: 'See where your credit goes go to'.tr,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: ApplicationSecondaryButton(
                text: 'Transaction'.tr,
                width: 120,
              ),
            )
          ],
        ),
      ),
    );
  }
}
