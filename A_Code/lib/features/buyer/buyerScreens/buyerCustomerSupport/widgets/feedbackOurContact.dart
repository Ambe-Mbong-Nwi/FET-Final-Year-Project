// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class feedbackOurContact extends StatelessWidget {
  const feedbackOurContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ATexts.fdContact,
            style: Theme.of(context).textTheme.headlineMedium),
        //mobile
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(ATexts.fdMobile,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(ATexts.fdMobileContact,
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),

        //email
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(ATexts.fdEmail,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(ATexts.fdEmailContact,
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwSections),
      ],
    );
  }
}
