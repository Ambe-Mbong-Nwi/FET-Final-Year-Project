// ignore_for_file: file_names, camel_case_types

import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class resetPassword extends StatelessWidget {
  const resetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false, //no back arrow
            actions: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(CupertinoIcons.clear))
            ]),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  //image
                  Image(
                    image: const AssetImage(AImages.verifyEmail),
                    width: AHelperFunctions.screenWidth() * 0.6,
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //title and subtitle
                  Text(ATexts.resetPasswordTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: ASizes.spaceBtwItems),

                  const SizedBox(height: ASizes.spaceBtwItems),
                  Text(ATexts.resetPasswordSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //buttons
                  // button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(ATexts.done))),
                  const SizedBox(height: ASizes.spaceBtwItems),

                  SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(ATexts.resendEmail))),
                  const SizedBox(height: ASizes.spaceBtwItems),
                ],
              )),
        ));
  }
}
