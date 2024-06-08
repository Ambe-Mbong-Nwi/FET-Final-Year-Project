// ignore_for_file: file_names, camel_case_types

import 'package:aproject/features/shop/screens/productDetails/widgets/productDetailRow.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class sellerShopDetailsTabInfo extends StatelessWidget {
  const sellerShopDetailsTabInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            //shop name
            productDetailRow(
              label: 'Shop Name:',
              value: "Ambe's Shop",
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //shop market
            productDetailRow(
              label: "Shop's Market:",
              value: 'Muea Market',
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //shop town
            productDetailRow(
              label: "Shop's Town:",
              value: 'Buea',
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //shop region
            productDetailRow(
              label: "Shop's Region:",
              value: 'SouthWest',
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //shop directions
            productDetailRow(
              label: 'Additional Directions:',
              value:
                  'Third store on the left in the second shade of the market',
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //shop product
            productDetailRow(
              label: "Main Products:",
              value: 'Raw Food',
            ),

            SizedBox(height: ASizes.spaceBtwItems),

            //Vendor number
            productDetailRow(
              label: 'Vendor Number:',
              value: '+237 677 80 26 91',
            ),

            SizedBox(height: ASizes.spaceBtwSections * 2),
          ],
        ));
  }
}
