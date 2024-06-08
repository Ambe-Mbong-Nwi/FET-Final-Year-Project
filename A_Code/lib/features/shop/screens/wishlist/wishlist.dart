// ignore_for_file: camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/common/widgets/layouts/gridLayout.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerProductCard.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//when using custom made appBar, place it in the body

class wishListScreen extends StatelessWidget {
  const wishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
            child: Column(
              children: [
                //appbar
                AAppBar(
                  title: Text('WhishList',
                      style: Theme.of(context).textTheme.headlineMedium),
                  centerTitle: true,
                  showBackArrow: true,
                  leading: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back),
                      color: dark ? AColors.light : AColors.black),
                ),
                const SizedBox(height: ASizes.spaceBtwItems),

                //grid layout
                AgridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const buyerProductCard(),
                )
              ],
            )));
  }
}
