// ignore_for_file: camel_case_types, file_names

import 'package:aproject/common/widgets/successScreen/successScreen.dart';
import 'package:aproject/features/buyer/buyerAuthentication/buyerAscreens/buyerLogin/buyerlogin.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //remove all screens and go to login
        appBar: AppBar(
            automaticallyImplyLeading: false, //remove back arrow
            actions: [
              IconButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
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
                    Text(ATexts.verifyEmailTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    Text('ambembongnwinchang@gmail.com',
                        style: Theme.of(context).textTheme.labelLarge,
                        textAlign: TextAlign.center),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    Text(ATexts.verifyEmailSubTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: ASizes.spaceBtwSections),

                    //buttons
                    // button. wrap with sizedbox so u can give infinity width of stretching the screen size.
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => success_screen(
                                  image: AImages.verifiedEmail,
                                  title: ATexts.yourAccountCreatedTitle,
                                  subTitle: ATexts.yourAccountCreatedSubTitle,
                                  onPressed: () =>
                                      Get.to(() => const LoginScreen()),
                                )),
                            child: const Text(ATexts.acontinue))),
                    const SizedBox(height: ASizes.spaceBtwItems),

                    SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () =>
                                Get.to(() => const verifyEmailScreen()),
                            child: const Text(ATexts.resendEmail))),
                    const SizedBox(height: ASizes.spaceBtwItems),
                  ],
                ))));
  }
}
