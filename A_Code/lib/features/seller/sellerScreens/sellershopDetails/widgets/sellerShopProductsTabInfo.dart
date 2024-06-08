// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/common/widgets/textButton/createTextButton.dart';
import 'package:aproject/features/seller/sellerScreens/myProducts/createProduct.dart';
import 'package:aproject/features/seller/sellerScreens/myProducts/widgets/sellerProductCard.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sellerShopProductsTabInfo extends StatelessWidget {
  const sellerShopProductsTabInfo({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  createTextButton(
                    text: 'Create Product',
                    onPressed: () => Get.to(() => const createProduct()),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections / 3),
                  AgridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => const sellerProductCard()),
                  const SizedBox(height: ASizes.spaceBtwSections * 2)
                ],
              ))
        ]);
  }
}
