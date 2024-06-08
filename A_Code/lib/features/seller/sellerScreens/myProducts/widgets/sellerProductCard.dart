// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/Images/cardImage.dart';
import 'package:aproject/common/widgets/custom_shapes/containers/cardImageContainer.dart';
import 'package:aproject/features/seller/sellerScreens/myProducts/createProduct%20copy.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class sellerProductCard extends StatelessWidget {
  const sellerProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const editProduct()),
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
              //like, %left
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //% left
                  ElevatedButton(
                      onPressed: () {},
                      //style: ButtonStyle(backgroundColor: ),
                      child: const Text('100% left',
                          style: TextStyle(fontSize: ASizes.fontSizeSm))),

                  // ACircularContainer(
                  //     radius: ASizes.sm,
                  //     width: 65.0,
                  //     height: 25.0,
                  //     backgroundColor: AColors.handy2.withOpacity(0.8),
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: ASizes.xs, horizontal: ASizes.xs / 2),
                  //     margin: const EdgeInsets.only(left: 10.0),
                  //     child: TextButton()

                  // child: const Text(
                  //   '100%Left',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: ASizes.fontSizeSm,
                  //   ),
                  // )),
                  //like buttton
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.alarm, color: Colors.red)),
                ],
              ),
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
                              "Ambe's Shop, Muea Market",
                              style: Theme.of(context).textTheme.labelLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: ASizes.spaceBtwItems / 4),
                      Text(
                        "WHITE CABBAGE",
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "XAF 300/unit",
                            style: TextStyle(
                                color: AColors.dark,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),
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
                                      Icon(Iconsax.edit, color: AColors.white)))
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
