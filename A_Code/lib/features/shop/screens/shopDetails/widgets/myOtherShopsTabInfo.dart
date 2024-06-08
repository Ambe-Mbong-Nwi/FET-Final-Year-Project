// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/features/shop/screens/VendorShops/widgets/vendorShopCard.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class myOtherShopsTabInfo extends StatelessWidget {
  const myOtherShopsTabInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), //parent already has.
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: ASizes.defaultSpace, vertical: 0.0),
              child: Column(
                children: [
                  AgridLayout(
                      itemCount: 6,
                      mainAxisExtent: 240, //height of a card
                      itemBuilder: (_, index) => const vendorShopCard()),
                  const SizedBox(height: ASizes.spaceBtwSections * 2)
                ],
              ))
        ]);
  }
}
