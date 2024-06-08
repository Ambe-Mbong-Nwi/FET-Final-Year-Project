// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class createproductInputFields extends StatelessWidget {
  const createproductInputFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //product name
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.productName),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //product name
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.productPrice),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //product quantity
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.productQuantity),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //product image
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopImage),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),
      ],
    );
  }
}
