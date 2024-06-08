// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class createTextButton extends StatelessWidget {
  const createTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Iconsax.element_plus, color: AColors.primary),
      label: Text(text,
          style: const TextStyle(
              color: AColors.primary,
              fontSize: ASizes.lg,
              fontWeight: FontWeight.w500)),
      //style: ButtonStyle(textStyle: ,  foregroundColor: AColors.primary)
    );
  }
}
