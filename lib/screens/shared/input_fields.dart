import 'package:flutter/material.dart';
import '/core/colors.dart';
import '/core/fonts.dart';
import '/core/validators.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EmailFormField extends StatelessWidget {
  final double height;
  final double width;
  final TextEditingController inputController;
  final Function(String)? onChanged;

  const EmailFormField({
    Key? key,
    required this.inputController,
    this.width = 320,
    this.height = 48,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          controller: inputController,
          onChanged: onChanged,
          validator: (value) {
            return Validator.isEmailValid(value) ? 'Valid'.tr : 'NotValid'.tr;
          },
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: const Icon(PhosphorIcons.at),
            filled: false,
            hintText: 'jhon.doe@example.com',
            hintStyle: TextStyle(
              color: Colors.grey.withOpacity(.75),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ApplicationColors.primaryBackground,
                width: 3.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ApplicationColors.primaryBackground,
                width: 3.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ApplicationColors.red,
                width: 3.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ApplicationColors.primaryBackground,
                width: 3.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final String hintText;
  final double height;
  final double width;
  final bool obscure;
  final Icon? icon;
  final TextInputType type;
  final TextEditingController inputController;
  final Function(String)? onChanged;
  final FormFieldValidator? validator;

  const InputField({
    Key? key,
    required this.inputController,
    required this.hintText,
    required this.label,
    required this.type,
    this.width = 320,
    this.height = 68,
    this.obscure = false,
    this.icon,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: ApplicationFonts.defaultFamily,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: height,
          width: width,
          child: TextFormField(
            controller: inputController,
            obscureText: obscure,
            keyboardType: type,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            onChanged: onChanged,
            validator: validator,
            decoration: InputDecoration(
              prefixIcon: icon,
              filled: true,
              iconColor: ApplicationColors.primaryButtonColor,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: ApplicationFonts.defaultFamily,
                color: Colors.black54,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 20.0,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ApplicationColors.light,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ApplicationColors.primaryButtonColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ApplicationColors.red,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ApplicationColors.light,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
