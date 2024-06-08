// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPromotion/widgets/buyerPromoCard.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';

class shopPromotionsTabInfo extends StatelessWidget {
  const shopPromotionsTabInfo({super.key});

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
                      crossAxisCount: 1, //how many cardz on one line
                      mainAxisExtent: 130.0, //height of a card
                      itemBuilder: (_, index) => const buyerPromoCard()),
                  const SizedBox(height: ASizes.spaceBtwSections * 2)
                ],
              ))
        ]);
  }
}
