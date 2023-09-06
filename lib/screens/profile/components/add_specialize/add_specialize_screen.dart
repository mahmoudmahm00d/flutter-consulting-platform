import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/profile/components/add_specialize/add_specialize_controller.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/input_fields.dart';
import 'package:flutter_consulting_platform/screens/shared/shared_scaffold.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:get/get.dart';

class AddSpecializeScreen extends StatelessWidget {
  const AddSpecializeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddSpecializeController>(builder: (controller) {
      if (controller.loading) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      return SharedScaffold(
        title: 'Add Specialize',
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: controller.key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 48),
                  const ApplicationText(
                    text: 'Category',
                    size: 18,
                  ),
                  DropdownButton(
                    // Initial Value
                    value: controller.categories[0].id,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: controller.categories.map((item) {
                      return DropdownMenuItem(
                        value: item.id,
                        child: ApplicationText(text: item.name),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (newValue) {
                      controller.category = newValue!;
                    },
                  ),
                  InputField(
                    hintText: 'Specialize',
                    label: 'Specialize',
                    width: double.infinity,
                    type: TextInputType.text,
                    validator: (value) {
                      String val = value.toString();
                      if (val.isEmpty) {
                        return 'This field required'.tr;
                      }
                    },
                    inputController: controller.name,
                  ),
                  InputField(
                    hintText: 'Description',
                    label: 'Description',
                    width: double.infinity,
                    type: TextInputType.text,
                    inputController: controller.description,
                  ),
                  InputField(
                    hintText: '100.0',
                    label: 'Price',
                    width: double.infinity,
                    type: TextInputType.number,
                    inputController: controller.price,
                    validator: (value) {
                      String val = value.toString();
                      if (val.isEmpty) {
                        return 'This field required'.tr;
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  ApplicationPrimaryButton(
                    text: 'Add Specialize',
                    onPressed: () {
                      if (controller.key.currentState!.validate()) {
                        controller.save();
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
