// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class feedbackInputs extends StatelessWidget {
  const feedbackInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //input fields
        Text(ATexts.fdTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: ASizes.spaceBtwSections / 1.5),

        //email

        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.fdEmail),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //email subject
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.fdEmailSubject),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //email content
        //user types and it automatically goes to next line till it reaches height.
        SizedBox(
          height: 250.0,
          child: TextFormField(
            maxLines: null,
            decoration: const InputDecoration(
              labelText: ATexts.fdEmailContent,
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),
      ],
    );
  }
}
