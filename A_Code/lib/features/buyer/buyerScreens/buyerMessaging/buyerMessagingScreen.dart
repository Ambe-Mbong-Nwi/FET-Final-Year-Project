// ignore_for_file: file_names, camel_case_types

import 'package:aproject/common/widgets/appBar/appBar.dart';
import 'package:aproject/common/widgets/custom_shapes/containers/searchContainer.dart';
import 'package:aproject/features/buyer/buyerScreens/buyerHome/widgets/buyerDrawerNavidation.dart';
import 'package:aproject/utils/constraints/colors.dart';
import 'package:aproject/utils/constraints/image_strings.dart';
import 'package:aproject/utils/constraints/sizes.dart';
import 'package:aproject/utils/constraints/text_strings.dart';
import 'package:aproject/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

//when using custom made appBar, place it in the body

class buyerMessagingScreen extends StatelessWidget {
  const buyerMessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // targetting if its the dark context, if true or false, store value in variable
    final bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      drawer: const buyerDrawerNavigation(),

      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
        child: Column(
          children: [
            //appBar
            AAppBar(
              title: Text('Messaging',
                  style: Theme.of(context).textTheme.headlineMedium),
              centerTitle: true,
              ////drawer icon
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Iconsax.menu5,
                        size: ASizes.lg * 1.5,
                        color: dark ? AColors.white : AColors.black),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),

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
