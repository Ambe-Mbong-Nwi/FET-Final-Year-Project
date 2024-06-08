// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/containers/circularContainer.dart';
import 'package:aproject/common/widgets/texts/ASectionHeading.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class changePaymentMethod extends StatelessWidget {
  const changePaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Column(children: [
      ASectionHeading(
        title: 'Payment Method:',
        showButton: false,
        onPressed: () {},
      ),
      const SizedBox(height: ASizes.spaceBtwItems / 2),

      //mtn momo
      Row(
        children: [
          SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(value: true, onChanged: (value) {})),
          const SizedBox(width: ASizes.sm),
          ACircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AColors.light : AColors.white,
              padding: const EdgeInsets.all(ASizes.sm / 2),
              child: const Image(
                  image: AssetImage(AImages.cabbage), fit: BoxFit.contain)),
          const SizedBox(width: 0.0),
          Text('MTN Momo', style: Theme.of(context).textTheme.bodyLarge)
        ],
      ),

      const SizedBox(height: ASizes.spaceBtwItems / 4),

      //orange money
      Row(
        children: [
          SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(value: false, onChanged: (value) {})),
          const SizedBox(width: ASizes.sm),
          ACircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AColors.light : AColors.white,
              padding: const EdgeInsets.all(ASizes.sm / 2),
              child: const Image(
                  image: AssetImage(AImages.cabbage), fit: BoxFit.contain)),
          const SizedBox(width: 0.0),
          Text('Orange Money', style: Theme.of(context).textTheme.bodyLarge)
        ],
      )
    ]);
  }
}
