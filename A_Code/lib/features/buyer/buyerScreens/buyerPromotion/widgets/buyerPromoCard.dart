// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/Images/cardImage.dart';
import 'package:aproject/common/widgets/custom_shapes/containers/cardImageContainer.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buyerPromoCard extends StatelessWidget {
  const buyerPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
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
          child: Row(children: [
            //  image,
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

            //product information
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //shop name and market
                      Row(
                        children: [
                          const Icon(Iconsax.verify5,
                              color: AColors.handy2, size: ASizes.iconSm),
                          Expanded(
                            //so no overflow happens
                            child: Text(
                              "Ambe's Shop, Muea Market",
                              style: Theme.of(context).textTheme.labelLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),

                      //old and new prices
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //new price
                          Text(
                            "XAF 300",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.apply(color: AColors.primary),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),

                          const SizedBox(width: 10.0),

                          //old price

                          const Text(
                            "XAF 500",
                            style: TextStyle(
                                color: AColors.dark,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),

                      //item name
                      Text(
                        "ON CABBAGE",
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),

                      //% off
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30% OFF",
                            style: Theme.of(context).textTheme.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),

                          //button
                          Container(
                              decoration: const BoxDecoration(
                                color: AColors.primary,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(ASizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      ASizes.productImageRadius),
                                ),
                              ),
                              child: const SizedBox(
                                  width: ASizes.iconLg * 1.2,
                                  height: ASizes.iconLg * 1.2,
                                  child:
                                      Icon(Iconsax.add, color: AColors.white)))
                        ],
                      )
                    ],
                  )),
            )
          ])

          //
          //             Text(
          //               "WHITE CABBAGE",
          //               style: Theme.of(context).textTheme.titleLarge,
          //               maxLines: 1,
          //               overflow: TextOverflow.ellipsis,
          //               textAlign: TextAlign.left,
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   "XAF 300/unit",
          //                   style: TextStyle(
          //                       color: AColors.dark,
          //                       fontSize: 16.0,
          //                       fontWeight: FontWeight.w700),
          //                   maxLines: 1,
          //                   overflow: TextOverflow.ellipsis,
          //                   textAlign: TextAlign.left,
          //                 ),
          //                 Container(
          //                     decoration: const BoxDecoration(
          //                       color: AColors.primary,
          //                       borderRadius: BorderRadius.only(
          //                         topLeft: Radius.circular(ASizes.cardRadiusMd),
          //                         bottomRight: Radius.circular(
          //                             ASizes.productImageRadius),
          //                       ),
          //                     ),
          //                     child: const SizedBox(
          //                         width: ASizes.iconLg * 1.2,
          //                         height: ASizes.iconLg * 1.2,
          //                         child:
          //                             Icon(Iconsax.add, color: AColors.white)))
          //               ],
          //             )
          //           ],
          //         ))
          //   ],
          // )
          ),
    );
  }
}
