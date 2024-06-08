// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/Images/cardImage.dart';
import 'package:aproject/common/widgets/custom_shapes/containers/cardImageContainer.dart';
import 'package:aproject/features/shop/screens/shopDetails/shopDetails.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class vendorShopCard extends StatelessWidget {
  const vendorShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const shopDetails()),
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  //color: AColors.darkGrey.withOpacity(0.1),
                  color: AColors.darkGrey.withOpacity(0.1),
                  blurRadius: 50,
                  spreadRadius: 7,
                  offset: const Offset(0, 2)),
            ],
            borderRadius: BorderRadius.circular(ASizes.productImageRadius),
            color: dark ? AColors.darkGrey : Colors.white,
          ),
          child: Column(
            children: [
              //image,
              cardImageContainer(
                height: 170,
                padding: const EdgeInsets.all(1.0),
                backgroundColor: dark ? AColors.dark : AColors.light,
                child:
                    //image
                    const cardImage(
                  imageUrl: AImages.cabbage,
                  applyImageRadius: true,
                ),
              ),

              const SizedBox(height: ASizes.spaceBtwItems / 3),

              //product information
              Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Iconsax.verify5,
                              color: AColors.handy2, size: ASizes.iconSm),
                          Expanded(
                            //use this so overflow property works.
                            child: Text(
                              "Ambe's Shop",
                              style: Theme.of(context).textTheme.headlineSmall,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: ASizes.spaceBtwItems / 2),
                      Text(
                        "Muea Market, Buea",
                        style: Theme.of(context).textTheme.labelLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: ASizes.spaceBtwItems / 3),
                    ],
                  ))
            ],
          )),
    );
  }
}
