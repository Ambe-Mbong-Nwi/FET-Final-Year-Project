// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailRow.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class shopDetailsTabInfo extends StatelessWidget {
  const shopDetailsTabInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            //shop name
            const productDetailRow(
              label: 'Shop Name:',
              value: "Ambe's Shop",
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //shop market
            const productDetailRow(
              label: "Shop's Market:",
              value: 'Muea Market',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //shop town
            const productDetailRow(
              label: "Shop's Town:",
              value: 'Buea',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //shop region
            const productDetailRow(
              label: "Shop's Region:",
              value: 'SouthWest',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //shop directions
            const productDetailRow(
              label: 'Additional Directions:',
              value:
                  'Third store on the left in the second shade of the market',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //shop product
            const productDetailRow(
              label: "Main Products:",
              value: 'Raw Food',
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            //Vendor number
            const productDetailRow(
              label: 'Vendor Number:',
              value: '+237 677 80 26 91',
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
