// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/features/seller/sellerScreens/myProducts/widgets/createproductinputFields.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//when using custom made appBar, place it in the body

class createProduct extends StatelessWidget {
  const createProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
        child: Column(
          children: [
            //appbar
            AAppBar(
              title: Text('Create Poduct',
                  style: Theme.of(context).textTheme.headlineMedium),
              centerTitle: true,
              showBackArrow: true,
              leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back),
                  color: dark ? AColors.light : AColors.black),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),

            //input fields
            const createproductInputFields(),
            const SizedBox(height: ASizes.spaceBtwSections),

            //create button
            //send button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Create'))),
          ],
        ),
      )),
    );
  }
}