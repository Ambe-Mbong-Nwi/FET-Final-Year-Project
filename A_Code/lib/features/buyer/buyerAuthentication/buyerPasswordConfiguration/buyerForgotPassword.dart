// ignore_for_file: camel_case_types, file_names

import 'package:aproject/features/buyer/buyerAuthentication/buyerPasswordConfiguration/buyerResetPassword.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  //headings
                  Text(ATexts.forgotPasswordTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  Text(ATexts.forgotPasswordSubTitile,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: ASizes.spaceBtwSections * 2),

                  //text field
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: ATexts.email,
                        prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),
                  //buttons
                  // button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                  //use get.off so this screen is discarded and user goes directly to login if back button is clicked.
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.off(() => const resetPassword()),
                          child: const Text(ATexts.asubmit))),
                  const SizedBox(height: ASizes.spaceBtwItems),
                ],
              )),
        ));
  }
}
