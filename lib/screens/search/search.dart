import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/search/search_controller.dart';
import 'package:flutter_consulting_platform/screens/shared/shared_scaffold.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/colors.dart';
import '../shared/application_buttons.dart';
import '../shared/input_fields.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        title: 'Search'.tr,
        body: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(
              child: InputField(
                type: TextInputType.text,
                icon: const Icon(
                  PhosphorIcons.magnifyingGlass,
                  color: ApplicationColors.primaryButtonColor,
                ),
                //inputController: controller.phone,
                hintText: 'Search'.tr,
                label: 'Search'.tr,
                validator: (value) {
                  String val = value.toString();
                  if (val.isEmpty) {
                    return 'This field required'.tr;
                  }
                },
                onChanged: (v) {},
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ApplicationPrimaryButton(
                text: 'Search'.tr,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
