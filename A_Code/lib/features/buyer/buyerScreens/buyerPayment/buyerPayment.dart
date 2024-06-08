// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/common/widgets/successScreen/successScreen.dart';
import 'package:aproject/features/buyer/buyerNavigation.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerDrawerNavidation.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerPayment/widgets/changePaymentMethod.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

//when using custom made appBar, place it in the body

class buyerPayment extends StatelessWidget {
  const buyerPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
        drawer: const buyerDrawerNavigation(),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: Column(
                children: [
                  //appbar
                  AAppBar(
                    title: Text('Make Payment',
                        style: Theme.of(context).textTheme.headlineMedium),
                    centerTitle: true,
                    showBackArrow: true,
                    ////drawer icon
                    leading: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          icon: Icon(Iconsax.menu5,
                              size: ASizes.lg * 1.5,
                              color: dark ? AColors.white : AColors.black),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  //intro message
                  Row(
                    children: [
                      Expanded(
                        child: Text(ATexts.introMessage,
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ],
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //choose payment method
                  const changePaymentMethod(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //amount to pay
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.money),
                        labelText: ATexts.payVendorAmount),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //vendor phone
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile),
                        labelText: ATexts.vPhone),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //buyer phone
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.send),
                        labelText: ATexts.pPhone),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections * 2),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => success_screen(
                                image: AImages.verifiedEmail,
                                title: 'Payment Success',
                                subTitle:
                                    'Make Arrangements with Vendor to Collect Your Secured Products.',
                                onPressed: () =>
                                    Get.offAll(() => const buyerNavigation()),
                              )),
                          child: const Text('Make Payment'))),
                  const SizedBox(height: ASizes.spaceBtwItems),
                ],
              )),
        ));
  }
}
