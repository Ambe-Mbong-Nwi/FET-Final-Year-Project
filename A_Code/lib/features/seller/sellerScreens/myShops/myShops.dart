// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/common/widgets/textButton/createTextButton.dart';
import 'package:aproject/features/seller/sellerScreens/myShops/createShop.dart';
import 'package:aproject/features/shop/screens/VendorShops/widgets/vendorShopCard.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//when using custom made appBar, place it in the body

class myShops extends StatelessWidget {
  const myShops({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //appbar
                  AAppBar(
                    title: Text('My Shops',
                        style: Theme.of(context).textTheme.headlineMedium),
                    centerTitle: true,
                    showBackArrow: true,
                    leading: IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Icons.arrow_back),
                        color: dark ? AColors.light : AColors.black),
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),

                  //create button
                  createTextButton(
                    text: 'Create Shop',
                    onPressed: () => Get.to(() => const createShop()),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),
                  AgridLayout(
                    itemCount: 3,
                    mainAxisExtent: 240,
                    itemBuilder: (_, index) => const vendorShopCard(),
                  )
                ],
              ))),
    );
  }
}
