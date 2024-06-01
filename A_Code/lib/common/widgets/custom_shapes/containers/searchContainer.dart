// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/device/device_utility.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASearchContainer extends StatelessWidget {
  const ASearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true, //default values
    this.showBorder = true,
    this.ontap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    final bool dark = AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
        child: Container(
            width: ADeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(ASizes.md),
            decoration: BoxDecoration(
                //showBackground is true and dark mode is true, show dark backgroun, else show light backgroun, else showBackground false, show transparent background
                color: showBackground
                    ? dark
                        ? AColors.dark
                        : AColors.white
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(ASizes.cardRadiusLg),
                border:
                    showBorder ? Border.all(color: AColors.darkGrey) : null),
            child: Row(
              children: [
                Icon(icon, color: AColors.darkGrey),
                const SizedBox(width: ASizes.spaceBtwItems),
                Text(text,
                    style: TextStyle(
                        fontSize: 14,
                        color: dark
                            ? Colors.white.withOpacity(0.5)
                            : Colors.black.withOpacity(0.5)))
              ],
            )),
      ),
    );
  }
}
