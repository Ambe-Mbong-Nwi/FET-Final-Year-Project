// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/custom_shapes/containers/searchContainer.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:flutter/material.dart';

class buyerMessagingScreen extends StatelessWidget {
  const buyerMessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //targetting if its the dark context, if true or false, store value in variable
    //final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AColors.primary,
        foregroundColor: Colors.white,
        title: Text('Messaging',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //search bar
            ASearchContainer(
              text: 'Search',
              ontap: () {},
            ),
            const SizedBox(height: ASizes.spaceBtwSections / 2),

            //title
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(AImages.message)),
                  Text(ATexts.buyermesgOnboard,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
          ],
        ),
      )),
      //
      // ),
    );
  }
}
