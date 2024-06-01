// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/containers/searchContainer.dart';
import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPromotion/widgets/buyerPromoCard.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class buyerPromotionScreen extends StatelessWidget {
  const buyerPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    //final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      //to use padding and customisation in appbar, create your custom own bcos using it directly here does not support all properties.
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: ASizes.defaultSpace * 2.5),
          //search bar
          ASearchContainer(
            text: 'Search for Products',
            ontap: () {},
          ),
          const SizedBox(height: ASizes.spaceBtwSections / 2),

          //title
          Text(ATexts.promoTitle,
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: ASizes.spaceBtwSections / 2),

          //product cards.
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AgridLayout(
              itemCount: 6,
              crossAxisCount: 1, //how many cardz on one line
              mainAxisExtent: 130.0, //height of a card
              itemBuilder: (_, index) => const buyerPromoCard(),
            ),
          ),
        ],
      )),
      //
      // ),
    );
  }
}
