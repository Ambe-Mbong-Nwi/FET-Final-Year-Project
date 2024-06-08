// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class createShopInputFields extends StatelessWidget {
  const createShopInputFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //shop name
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopName),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop market name
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopMarketName),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop town
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopTown),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop region
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopRegion),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop description. adjust to take max amt of letters
        SizedBox(
          child: TextFormField(
            maxLines: 2,
            decoration: const InputDecoration(labelText: ATexts.shopDirections),
          ),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop main product
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopmainProduct),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),

        //shop main product
        TextFormField(
          decoration: const InputDecoration(labelText: ATexts.shopImage),
        ),
        const SizedBox(height: ASizes.spaceBteInputFields),
      ],
    );
  }
}
