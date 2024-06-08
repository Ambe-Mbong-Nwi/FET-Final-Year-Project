// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailRow.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class productDetailsTabInfo extends StatelessWidget {
  const productDetailsTabInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            //product Details
            const productDetailRow(
              label: 'Product Name:',
              value: 'White Cabbage',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //product price
            const productDetailRow(
              label: 'Product Unit Price:',
              value: 'XAF 500',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //product quantity
            const productDetailRow(
              label: 'Original Quantity:',
              value: '100',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //% left
            const productDetailRow(
              label: 'Percentage Left:',
              value: '100%',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //promotion price
            const productDetailRow(
              label: 'Promotion Price:',
              value: 'None',
            ),

            const SizedBox(height: ASizes.spaceBtwSections * 2),

            //message vendor
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Message Vendor')))
          ],
        ));
  }
}
