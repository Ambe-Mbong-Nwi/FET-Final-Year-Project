// ignore_for_file: camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class sellerLoginHeader extends StatelessWidget {
  const sellerLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double
          .infinity, //did this bos i wanted it to span all screen so i can align it left
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //to the left
        children: [
          const SizedBox(height: ASizes.spaceBtwItems),
          Text(ATexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: ASizes.sm),
          Text(ATexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
