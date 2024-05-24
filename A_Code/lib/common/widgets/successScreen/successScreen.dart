// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/spacing_styles.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

//to make this screen reusable we don't give fixed values but properties instead
class success_screen extends StatelessWidget {
  const success_screen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(image),
                width: AHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //title and subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ASizes.spaceBtwItems),

              const SizedBox(height: ASizes.spaceBtwItems),
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ASizes.spaceBtwSections),

              //buttons
              // button. wrap with sizedbox so u can give infinity width of stretching the screen size.
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(ATexts.acontinue))),
              const SizedBox(height: ASizes.spaceBtwItems),
            ],
          )),
    ));
  }
}
